create or replace procedure PB_MOVE_MERGE_INF
AS
  --迁移新大陆 合并新网银和老网银重复开户数据信息
  REPEATE_CSTNO      VARCHAR2(20); --网银客户号
  REPEATE_KENELNO    VARCHAR2(20); --核心客户号
  REPEATE_USER_NUM   integer; --老网银相同核心客户号用户数量
  REPEATE_LOGIN_NAME VARCHAR2(20); --老网银自定义用户名
  REPEATE_CERT_TIME  VARCHAR2(20); --老网银最晚证书签约时间
  NWE_MOBLIE_NUM  integer; --新网银手机签约记录数
  OLD_MOBLIE_NUM  integer; --老网银手机签约记录数
  SELECTED_MOBLIE_CERT_CSTNO  VARCHAR2(20); --选择的需要更新短信签约客户号
  NWE_ACC_NUM  integer; --新网银账号数
  NWE_LIMMIT_NUM  integer; --限额记录数
  NWE_LIMMIT_NUM2 integer; --日笔数 年累计限额记录数
  NWE_LOGIN_NUM  integer; --自定义用户名记录数
  REPEATE_BOOK_NUM  integer; --老用户重复账户记录数
  REPEATE_CHARID_NUM integer; --新注册用户登陆ID和手机号不一致个数
begin
  FOR reapteInfs IN (select  distinct t1.cip_cstno, t1.cip_cifno
                       from (select *
                               from pb_cst_inf cst
                              where cst.cip_cstno like 'PB%'
                                and cip_cifno is not null) t1,
                            (select *
                               from pb_cst_inf cst
                              where cst.cip_cstno not like 'PB%'
                                and cip_cifno is not null) t2
                      where t1.cip_cifno = t2.cip_cifno
                        and t1.cip_ctfno = t2.cip_ctfno
                      --  AND t1.cip_cifno = '10000004927'
   ) LOOP
    REPEATE_CSTNO   := reapteInfs.Cip_Cstno;
    REPEATE_KENELNO := reapteInfs.Cip_Cifno;

    --1.个人客户账户信息 重复账户不进行下挂，判断是否重复的标准为账户号是否相同
    select count(aif_accno) into NWE_ACC_NUM
    from pb_acc_inf where aif_cstno = REPEATE_CSTNO;
    --确认新网银已挂账号时，去除老网银默认账号标示
    IF NWE_ACC_NUM > 0 THEN
       update pb_acc_inf acc
         set acc.aif_defaltflag = '0'
       where acc.aif_cstno in
             (select cst.cip_cstno
                from pb_cst_inf cst
               where cst.cip_cifno = REPEATE_KENELNO
                 and cst.cip_cstno not like 'PB%');
     END IF;
    --更新非重复账号到新网银客户号下
    update pb_acc_inf acc
       set acc.aif_cstno = REPEATE_CSTNO
     where acc.aif_cstno in
           (select cst.cip_cstno
              from pb_cst_inf cst
             where cst.cip_cifno = REPEATE_KENELNO
               and cst.cip_cstno not like 'PB%')
       and acc.aif_accno not in
           (select aif_accno from pb_acc_inf where aif_cstno = REPEATE_CSTNO);
     --删除重复数据
     delete from pb_acc_inf acc
     where acc.aif_cstno in
           (select cst.cip_cstno
              from pb_cst_inf cst
             where cst.cip_cifno = REPEATE_KENELNO
               and cst.cip_cstno not like 'PB%');

    --2.个人客户认证方式信息
        --UKEY签约处理
        select max(cert.pci_endtime) into REPEATE_CERT_TIME
        from pb_cert_inf cert
        where cert.pci_cstno in(
        select cst.cip_cstno
         from pb_cst_inf cst
        where cst.cip_cifno = REPEATE_KENELNO
          and cst.cip_cstno not like 'PB%'
        ) and pci_mediumtype = '0';

        IF REPEATE_CERT_TIME IS NOT NULL THEN
           update pb_cert_inf cert
           set cert.pci_cstno = REPEATE_CSTNO
           where pci_endtime = REPEATE_CERT_TIME
             and cert.pci_cstno in
                 (select cst.cip_cstno
                    from pb_cst_inf cst
                   where cst.cip_cifno = REPEATE_KENELNO
                     and cst.cip_cstno not like 'PB%')
             and pci_mediumtype = '0'
             and rownum = 1;

            delete from pb_cert_inf cert
             where cert.pci_cstno in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%')
               and cert.pci_mediumtype = '0';
         END IF;

         --短信签约处理
         select nvl(sum(case
             when user_type = 'NW' THEN
                      1
                   END),0) as NW,
               nvl(sum(case
                     when user_type = 'OL' THEN
                      1
                   END),0) as OL into NWE_MOBLIE_NUM, OLD_MOBLIE_NUM
          from (select (case
                         when instr(pci_cstno, 'PB') > 0 then
                          'NW'
                         else
                          'OL'
                       end) user_type
                  from pb_cert_inf cert
                 where cert.pci_mediumtype = '3'
                   and cert.pci_cstno in
                       (select cst.cip_cstno
                          from pb_cst_inf cst
                         where cst.cip_cifno = REPEATE_KENELNO)
                 group by cert.pci_cstno);

          --新开户网银已做短信签约，删除老网银的
          IF NWE_MOBLIE_NUM > 0 THEN
             delete from
             pb_cert_inf cert
             where cert.pci_mediumtype = '3'
               and cert.pci_cstno in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');
          --新开户网银未做短信签约，使用最新签约数据，删除其他
          ELSIF NWE_MOBLIE_NUM = 0 THEN
            --选择需更新的老网银客户号
             select pci_cstno into SELECTED_MOBLIE_CERT_CSTNO
             from (select *
                     from pb_cert_inf cert
                    where cert.pci_mediumtype = '3'
                      and cert.pci_cstno in
                          (select cst.cip_cstno
                             from pb_cst_inf cst
                            where cst.cip_cifno = REPEATE_KENELNO
                              and cst.cip_cstno not like 'PB%')
                    order by cert.pci_registtime desc)
            where rownum = 1;
            --将老网银客户号更新为新网银客户号
            update pb_cert_inf cert
               set cert.pci_cstno = REPEATE_CSTNO
             where cert.pci_cstno = SELECTED_MOBLIE_CERT_CSTNO;

             --删除其他多余老网银客户号
             delete from
             pb_cert_inf cert
             where cert.pci_mediumtype = '3'
               and cert.pci_cstno in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');
           END IF;

           --4.个人客户收款人名册信息 去除收款人账号、收款人姓名、转账方式相同数据
           --确认老客户重复收款人名称数
           select  nvl(sum(count(book.pbk_accno)),0) into REPEATE_BOOK_NUM
              from PB_REL_CST_BOOK book
             where pbk_memberid in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%')
             group by pbk_accno
            having count(pbk_accno) > 1;

            --老客户含义重复收款人名称时，删除一个重复的
            IF REPEATE_BOOK_NUM > 0 THEN
                delete from PB_REL_CST_BOOK
                 where (pbk_accno, pbk_memberid, pbk_channel) in
                       (select book.pbk_accno,
                               max(book.pbk_memberid),
                               book.pbk_channel
                          from PB_REL_CST_BOOK book
                         where pbk_accno in
                               (select book.pbk_accno
                                  from PB_REL_CST_BOOK book
                                 where pbk_memberid in
                                       (select cst.cip_cstno
                                          from pb_cst_inf cst
                                         where cst.cip_cifno = REPEATE_KENELNO
                                           and cst.cip_cstno not like 'PB%')
                                 group by pbk_accno
                                having count(pbk_accno) > 1)
                           and pbk_memberid in
                               (select cst.cip_cstno
                                  from pb_cst_inf cst
                                 where cst.cip_cifno = REPEATE_KENELNO
                                   and cst.cip_cstno not like 'PB%')
                         group by book.pbk_accno, book.pbk_channel);
            END IF;
             --加挂老客户收款人名称到新客户名下
             update PB_REL_CST_BOOK book
                set pbk_memberid = REPEATE_CSTNO
              where book.pbk_memberid in
                    (select cst.cip_cstno
                       from pb_cst_inf cst
                      where cst.cip_cifno = REPEATE_KENELNO
                        and cst.cip_cstno not like 'PB%')
                and (book.pbk_accno, book.pbk_channel) not in
                    (select pbk_accno, pbk_channel
                       from PB_REL_CST_BOOK
                      where pbk_memberid = REPEATE_CSTNO);

            delete from PB_REL_CST_BOOK book
             where book.pbk_memberid in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');

           -- 5.历史交易记录信息
           -- a)个人客户单笔转账流水信息
             update PB_TRANSFER trans
               set trans.ptr_memberid = REPEATE_CSTNO
             where trans.ptr_memberid in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');

             update PB_TRAN_FLOW trnsflow
               set trnsflow.trf_cstno = REPEATE_CSTNO
             where trnsflow.trf_cstno in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');
            --b)个人客户定活互转流水信息
             update PB_FIX_CURRENT_TRAN fixTrans
               set fixTrans.fct_cstno = REPEATE_CSTNO
             where fixTrans.fct_cstno in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');

           --个人电子回单信息
             update PB_ELECTRONIC_BILL bill
               set bill.peb_cstno = REPEATE_CSTNO
             where bill.peb_cstno in
                   (select cst.cip_cstno
                      from pb_cst_inf cst
                     where cst.cip_cifno = REPEATE_KENELNO
                       and cst.cip_cstno not like 'PB%');

          --6.个人用户限额信息
             select count(ccl_cstno) into NWE_LIMMIT_NUM from
             PB_CST_CURR_LIMIT lit where
             lit.ccl_cstno = REPEATE_CSTNO;
             --已有限额场合
             IF NWE_LIMMIT_NUM > 0 THEN
               delete from PB_CST_CURR_LIMIT lit
               where lit.ccl_cstno in(
                 select cst.cip_cstno
                  from pb_cst_inf cst
                 where cst.cip_cifno = REPEATE_KENELNO
                   and cst.cip_cstno not like 'PB%'
                );
             --没有限额场合
             ELSE
                update PB_CST_CURR_LIMIT litt
                   set litt.ccl_cstno = REPEATE_CSTNO
                 where litt.ccl_cstno =
                       (select ccl_cstno
                          from (select ccl_cstno
                                  from PB_CST_CURR_LIMIT lit
                                 where lit.ccl_cstno in
                                       (select cst.cip_cstno
                                          from pb_cst_inf cst
                                         where cst.cip_cifno = REPEATE_KENELNO
                                           and cst.cip_cstno not like 'PB%')
                                 order by lit.ccl_date     desc,
                                          lit.ccl_sinlimt  desc,
                                          lit.ccl_totlimit desc)
                         where rownum = 1); 
               --删除多余客户限额信息
               delete from PB_CST_CURR_LIMIT lit
               where lit.ccl_cstno in
                    (select cst.cip_cstno
                       from pb_cst_inf cst
                      where cst.cip_cifno = REPEATE_KENELNO
                        and cst.cip_cstno not like 'PB%');
             END IF;
             --日交易笔数,年累计限额
             select count(ccl_cstno) into NWE_LIMMIT_NUM2 
             from
             PB_CST_TRANS_LIMIT lit where
             lit.ccl_cstno = REPEATE_CSTNO;
             --已有限额场合
             IF NWE_LIMMIT_NUM2 > 0 THEN
               delete from PB_CST_TRANS_LIMIT lit
               where lit.ccl_cstno in(
                 select cst.cip_cstno
                  from pb_cst_inf cst
                 where cst.cip_cifno = REPEATE_KENELNO
                   and cst.cip_cstno not like 'PB%'
                );
             --没有限额场合
             ELSE
                update PB_CST_TRANS_LIMIT litt
                   set litt.ccl_cstno = REPEATE_CSTNO
                 where litt.ccl_cstno =
                       (select ccl_cstno
                          from (
                                 select ccl_cstno
                                  from PB_CST_TRANS_LIMIT lit
                                 where lit.ccl_cstno in
                                       (select cst.cip_cstno
                                          from pb_cst_inf cst
                                         where cst.cip_cifno = REPEATE_KENELNO
                                           and cst.cip_cstno not like 'PB%')
                                 order by lit.ccl_lastdate   desc,
                                          lit.ccl_daynummax  desc,
                                          lit.ccl_tli_yearmax desc)
                         where rownum = 1); 
               --删除多余客户限额信息
               delete from PB_CST_TRANS_LIMIT lit
               where lit.ccl_cstno in
                    (select cst.cip_cstno
                       from pb_cst_inf cst
                      where cst.cip_cifno = REPEATE_KENELNO
                        and cst.cip_cstno not like 'PB%');
             END IF;
             
           --7.个人客户基本信息
            --a)自定义用户名 当且仅当只有一条老网银自定义用户名,同时新注册网银未修改过登陆ID时更新
            select count(cst.cip_cstno)
              into REPEATE_USER_NUM
              from pb_cst_inf cst
             where cst.cip_cifno = REPEATE_KENELNO
               and cst.cip_cstno not like 'PB%';
             
            select count(cst.cip_cstno) into REPEATE_CHARID_NUM
            from pb_cst_inf cst 
            where cst.cip_cstno = REPEATE_CSTNO 
              and cst.cip_charid != cst.cip_mobile;

            REPEATE_LOGIN_NAME := '';
            IF REPEATE_USER_NUM = 1 and REPEATE_CHARID_NUM = 0 THEN
              select COUNT(cst.cip_charid) INTO NWE_LOGIN_NUM
                 from pb_cst_inf cst, PERBANK_ZHONGNING.t_login_mode lg_md
               where cst.cip_cstno = lg_md.cid
                 and lg_md.login_type = '2'
                 and cst.cip_cifno = REPEATE_KENELNO
                 and cst.cip_cstno not like 'PB%';
               IF NWE_LOGIN_NUM > 0 THEN
                  select cst.cip_charid INTO REPEATE_LOGIN_NAME
                    from pb_cst_inf cst, PERBANK_ZHONGNING.t_login_mode lg_md
                   where cst.cip_cstno = lg_md.cid
                     and lg_md.login_type = '2'
                     and cst.cip_cifno = REPEATE_KENELNO
                     and cst.cip_cstno not like 'PB%';
                   --更新客户信息表数据
                   UPDATE pb_cst_inf cst
                     SET cst.cip_charid = REPEATE_LOGIN_NAME
                   WHERE cst.cip_cstno = REPEATE_CSTNO;
               END IF;
            END IF;

             --删除客户信息表数据
             delete from pb_cst_inf cst
             where cst.cip_cstno not like 'PB%'
               and cst.cip_cifno = REPEATE_KENELNO;
       commit;
  END LOOP;
end;
/
