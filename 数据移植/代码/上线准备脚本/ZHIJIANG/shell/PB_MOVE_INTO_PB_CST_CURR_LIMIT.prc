CREATE OR REPLACE PROCEDURE PB_MOVE_INTO_PB_CST_CURR_LIMIT
AS
begin
--迁移新大陆日单笔限额、日累计限额、日交易笔数、年累计限额数据

----初始化日单笔限额、日累计限额
insert into PB_CST_CURR_LIMIT
  (CCL_CSTNO,
   CCL_TOTLIMIT,
   CCL_CURRLIMIT,
   CCL_DATE,
   CCL_SINLIMT,
   CCL_LASTDATE,
   CCL_LIMITFLAG)
SELECT cid,
       200000, --先默认按照个人20万设置
       0,
       to_char(sysdate, 'yyyymmdd'),
       200000, --先默认按照个人20万设置
       to_char(sysdate, 'yyyymmdd'),
       '0'
 FROM (SELECT DISTINCT cst.*
       from PERBANK_ZHIJIANG.t_customer cst,
            PERBANK_ZHIJIANG.t_account acc,
            COMM_ZHIJIANG.t_cert cert
       where cst.cid = acc.cid
         and acc.acct_no = cert.acct_no
         and cst.status != '0'
         and acc.status = '1'
         and cert.status != 0) cst
where cst.status != '0'; --过滤掉注销

--初始化日交易笔数、年累计限额表
insert into pb_cst_trans_limit
  (CCL_CSTNO,
   CCL_DAYNUMMAX,
   CCL_DAYNUMSUM,
   CCL_TLI_YEARMAX,
   CCL_TLI_YEARTOTAL,
   CCL_LASTDATE,
   CCL_REMARK)
select cst.cid, 99999, 0, 99999999999.00, 0.00,  to_char(sysdate, 'yyyymmddhh24miss'), null
from (SELECT DISTINCT cst.*
       from PERBANK_ZHIJIANG.t_customer cst,
            PERBANK_ZHIJIANG.t_account acc,
            COMM_ZHIJIANG.t_cert cert
       where cst.cid = acc.cid
         and acc.acct_no = cert.acct_no
         and cst.status != '0'
         and acc.status = '1'
         and cert.status != 0) cst
where cst.status != '0'; --过滤掉注销


--单笔限额、日累计限额(新大陆网银未设置单笔交易限额，因此单笔和日累计设置为一致)
update PB_CST_CURR_LIMIT cl set (cl.CCL_TOTLIMIT, cl.CCL_SINLIMT) =
( select day_limmit, day_limmit
  from
    (
      select cid, max(value) as day_limmit
      from
      (
        select t1.cid, t1.acct_no, t2.value
          from (select cst.cid, acc.acct_no
                  FROM PERBANK_ZHIJIANG.t_account acc, 
                      (SELECT DISTINCT cst.*
                       from PERBANK_ZHIJIANG.t_customer cst,
                            PERBANK_ZHIJIANG.t_account acc,
                            COMM_ZHIJIANG.t_cert cert
                       where cst.cid = acc.cid
                         and acc.acct_no = cert.acct_no
                         and cst.status != '0'
                         and acc.status = '1'
                         and cert.status != 0) cst
                 where acc.cid = cst.cid
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' --过滤掉无效账号
                ) t1,
               (select fn.acct_no, fa.keyname, fa.value, fa.upd_date
                  from PERBANK_ZHIJIANG.t_acct_func fn, PERBANK_ZHIJIANG.t_acct_func_attr fa
                 where fn.id_acct_func = fa.id_acct_func
                   and fa.keyname in ('PROPKEY_NETPAYMENT_DAY_LIMIT')
                   and fn.bus_code ='TRANSFER_BUSINESS'
                ) t2
         where t1.acct_no = t2.acct_no
       )t3
       group by cid
     ) t4
   where t4.cid = cl.ccl_cstno
 )
 where cl.ccl_cstno in(
         select distinct t11.cid
          from (SELECT DISTINCT cst.cid, acc.acct_no
                  FROM PERBANK_ZHIJIANG.t_account acc, 
                       PERBANK_ZHIJIANG.t_customer cst,
                       COMM_ZHIJIANG.t_cert cert
                 where acc.cid = cst.cid
                   and acc.acct_no = cert.acct_no
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' --过滤掉无效账号
                   and cert.status != 0
                ) t11,
               (select fn.acct_no, fa.keyname, fa.value, fa.upd_date
                  from PERBANK_ZHIJIANG.t_acct_func fn, PERBANK_ZHIJIANG.t_acct_func_attr fa
                 where fn.id_acct_func = fa.id_acct_func
                   and fa.keyname in ('PROPKEY_NETPAYMENT_DAY_LIMIT')
                   and fn.bus_code ='TRANSFER_BUSINESS'
                ) t22
         where t11.acct_no = t22.acct_no
 );


 --日交易笔数
update pb_cst_trans_limit ctl set (ctl.ccl_daynummax) =
( select day_count
  from
    (
      select cid, max(value) as day_count
      from
      (
        select t1.cid, t1.acct_no, t2.value
          from (select cst.cid, acc.acct_no
                  FROM PERBANK_ZHIJIANG.t_account acc, 
                       (SELECT DISTINCT cst.*
                        from PERBANK_ZHIJIANG.t_customer cst,
                            PERBANK_ZHIJIANG.t_account acc,
                            COMM_ZHIJIANG.t_cert cert
                        where cst.cid = acc.cid
                         and acc.acct_no = cert.acct_no
                         and cst.status != '0'
                         and acc.status = '1'
                         and cert.status != 0) cst
                 where acc.cid = cst.cid
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' --过滤掉无效账号
                ) t1,
               (select fn.acct_no, fa.keyname, fa.value, fa.upd_date
                  from PERBANK_ZHIJIANG.t_acct_func fn, PERBANK_ZHIJIANG.t_acct_func_attr fa
                 where fn.id_acct_func = fa.id_acct_func
                   and fa.keyname in ('PROPKEY_NETPAYMENT_DAY_COUNT')
                   and fn.bus_code ='TRANSFER_BUSINESS'
                ) t2
         where t1.acct_no = t2.acct_no
       )t3
       group by cid
     ) t4
   where t4.cid = ctl.ccl_cstno
 )
 where ctl.ccl_cstno in(
         select distinct t11.cid
          from (SELECT DISTINCT cst.cid, acc.acct_no
                  FROM PERBANK_ZHIJIANG.t_account acc,
                       PERBANK_ZHIJIANG.t_customer cst,
                       COMM_ZHIJIANG.t_cert cert
                 where acc.cid = cst.cid
                   and acc.acct_no = cert.acct_no
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' --过滤掉无效账号
                   and cert.status != 0
                ) t11,
               (select fn.acct_no, fa.keyname, fa.value, fa.upd_date
                  from PERBANK_ZHIJIANG.t_acct_func fn, PERBANK_ZHIJIANG.t_acct_func_attr fa
                 where fn.id_acct_func = fa.id_acct_func
                   and fa.keyname in ('PROPKEY_NETPAYMENT_DAY_COUNT')
                   and fn.bus_code ='TRANSFER_BUSINESS'
                ) t22
         where t11.acct_no = t22.acct_no
 );


 --年累计
 update pb_cst_trans_limit ctl set (ctl.ccl_tli_yearmax) =
( select year_limmit
  from
    (
      select cid, max(value) as year_limmit
      from
      (
        select t1.cid, t1.acct_no, t2.value
          from (SELECT DISTINCT cst.cid, acc.acct_no
                  FROM PERBANK_ZHIJIANG.t_account acc, 
                       PERBANK_ZHIJIANG.t_customer cst,
                       COMM_ZHIJIANG.t_cert cert
                 where acc.cid = cst.cid
                   and acc.acct_no = cert.acct_no
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' --过滤掉无效账号
                   and cert.status != 0
                ) t1,
               (select fn.acct_no, fa.keyname, fa.value, fa.upd_date
                  from PERBANK_ZHIJIANG.t_acct_func fn, PERBANK_ZHIJIANG.t_acct_func_attr fa
                 where fn.id_acct_func = fa.id_acct_func
                   and fa.keyname in ('PROPKEY_NETPAYMENT_YEAR_LIMIT')
                   and fn.bus_code ='TRANSFER_BUSINESS'
                ) t2
         where t1.acct_no = t2.acct_no
       )t3
       group by cid
     ) t4
   where t4.cid = ctl.ccl_cstno
 )
 where ctl.ccl_cstno in(
         select distinct t11.cid
          from (SELECT DISTINCT cst.cid, acc.acct_no
                  FROM PERBANK_ZHIJIANG.t_account acc, 
                       PERBANK_ZHIJIANG.t_customer cst,
                       COMM_ZHIJIANG.t_cert cert
                 where acc.cid = cst.cid
                   and acc.acct_no = cert.acct_no
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' --过滤掉无效账号
                   and cert.status != 0
                ) t11,
               (select fn.acct_no, fa.keyname, fa.value, fa.upd_date
                  from PERBANK_ZHIJIANG.t_acct_func fn, PERBANK_ZHIJIANG.t_acct_func_attr fa
                 where fn.id_acct_func = fa.id_acct_func
                   and fa.keyname in ('PROPKEY_NETPAYMENT_YEAR_LIMIT')
                   and fn.bus_code ='TRANSFER_BUSINESS'
                ) t22
         where t11.acct_no = t22.acct_no
 );

end;
/
