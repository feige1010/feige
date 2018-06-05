create or replace procedure CB_MOVE_INTO_CB_CERT_INF AS
  --迁移新大陆 企业银行 企业会员认证签约表
  certNum            integer; --企业证书个数
  transflowFlag      integer; --移植后企业授权模式标示 1:一步 2:两步(录入、授权) 3:三步(录入、复核、授权)
  submitUserId       varchar2(20); --选定经办角色操作员用户ID
  checkUserId       varchar2(20); --选定复核角色操作员用户ID
  grantUserId       varchar2(20); --选定授权角色操作员用户ID
  checkCertFlag      varchar2(1); --标示复核角色操作员是否有独立证书 0：无 1：有
  grantCertFlag      varchar2(1); --标示授权角色操作员是否有独立证书 0：无：1：有
  submitCertFlag     varchar2(1); --标示经办角色操作员是否有独立证书 0：无：1：有

  userRight   varchar2(5); --用户权限
  userAuthLvl varchar2(1); --用户授权级别
  SED_CERTID varchar2(128); --选择分配证书ID
  SED_OIDS  varchar2(128);   --现在使用证书使用者ID
  SED_ADMIN_NUM integer; --选择使用证书系统主管和管理员被分配的人数
  SED_SUBMITOR_NUM integer; --选择使用证书录入角色被分配的人数
  SED_SUBMITOR_USER varchar2(128); --选择使用证书录入角色被分配的用户
  SED_CHECKER_NUM integer; --选择使用证书复核角色被分配的人数
  SED_GRANTOR_NUM integer; --选择使用证书授权被分配的人数
  SED_GRANTOR_USER varchar2(128); --选择使用证书授权被分配的人数
  EXT_USER_NUM integer; --剔除指定UKEY人员已分配UKEY人数
  CONSOLETYPE varchar2(1); --企业中心管理模式
  REPEATE_UKEEY integer; --系统管理员和系统主管重复UKEY数量
  SUBMIT_USER_NUM INTEGER; --拥有UKEY录入人员个数
  CHECK_GRANT_NUM INTEGER; --复核、授权人员个数
  ADMIN_USER_NUM INTEGER; --管理人员个数
  DONE_SUBMIT_USER varchar2(128); --已经分配UKEY录入人员编号
  EXCLUDE_SUBMIT_USER varchar2(128); --需过滤录入人员编号
  INCLUDE_SUBMIT_USER varchar2(128); --含有录入人员编号
  INCLUDE_SUBMIT_KEY varchar2(128); --含有录入人员ukey编号
  SED_ADMIN_USER varchar2(128); --选择分配UKEY管理人员编号

begin
 --1、清除用于存储选定经办角色操作员信息表数据
 execute immediate 'truncate table TEMP_LAST_TRANS_USER';
 --2、首先将原数据用户证书对应关系原样移植
/**/
 insert into CB_CERT_INF
    (CCI_CSTNO,
     CCI_USERNO,
     CCI_CERTID,
     CCI_CERTINFO,
     CCI_STT,
     CCI_STARTTIME,
     CCI_ENDTIME,
     CCI_REFNO,
     CCI_AUTHNO,
     CCI_CERTTYPE,
     CCI_USBKEYTYPE)
    select substr(op.NCID, 2) as NCID,
           substr(op.OID, 3) as OID,
           nvl(pb_no, op.ID_CERT),
           FUNC_FORMATE_CERTINFO_UPPER(cert.DNISO) as DNISO,
           '4' as STATUS, --激活状态
           to_char(cert.CRE_DATE, 'yyyymmddhh24miss') as CRE_DATE,
           to_char(cert.OVER_DATE, 'yyyymmddhh24miss') as OVER_DATE,
           cert.REF_CODE,
           cert.auth_code,
           '0' as CERTTYPE, --0 UKEY
           (case cert.MEDIA
             when '1' then
              '0' --非预制证书
             when '2' then
              '1' --预置证书
           end) as USBKEYTYPE
      from FIRMBANK_ZHIJIANG.t_OPERATOR op,
           (select cert.*, eb_cert.pb_no
              from COMM_ZHIJIANG.t_cert cert, EB_CERTIFICATE eb_cert
             where cert.dniso = eb_cert.dn(+)) cert
     where op.id_cert = cert.id_cert
       AND ncid in (select ncid
                      from FIRMBANK_ZHIJIANG.t_firm
                     where firm_status != '0')
       and --过滤掉已注销客户
           oid in (select oid
                     from FIRMBANK_ZHIJIANG.t_operator
                    where OPER_STATUS in ('1', '3')) --只查询正常状态和临时冻结状态数据，滤掉已删除状态、等待授权状态数据
         and cert.status = '1'; --过滤只查询有效状态的证书
   commit;

    --创建角色用户关系临时表
    execute immediate 'truncate table TEMP_ROLE_USER_REF';
    insert into TEMP_ROLE_USER_REF
    select ncid, role_id, to_char(wm_concat(substr(t.oid,3))) as oids, count(t.oid) as role_num
    from
    (select distinct auth.ncid, role_id, auth.oid
      from FIRMBANK_ZHIJIANG.t_auth auth, FIRMBANK_ZHIJIANG.t_auth_role rl
     where auth.id_auth = rl.id_auth
       and auth.auth_status = '1'
       and auth.ncid in (select ncid
                          from FIRMBANK_ZHIJIANG.t_firm
                         where firm_status != '0')
       and  oid in (select oid
                         from FIRMBANK_ZHIJIANG.t_operator
                        where OPER_STATUS in ('1', '3'))
       union

       select op.ncid, 'ADMIN' as role_id, op.oid
          from FIRMBANK_ZHIJIANG.t_operator op
       where OPER_STATUS in('1', '3') and oper_type in(0,1)
       ) t
    group by t.ncid, t.role_id;
   --创建证书角色用户关系临时表
   execute immediate 'truncate table TEMP_CERT_ROLE_USER_REF';
   insert into TEMP_CERT_ROLE_USER_REF
   select cert.cci_cstno,
          cert.cci_certid,
          to_char(wm_concat(auth.role_id)) as role_ids,
          to_char(wm_concat(cert.cci_userno)) as oids,
          count(auth.role_id) as cert_num,
          sum(case when ROLE_ID = 'ADMIN' THEN 1 ELSE 0 END) as ADMIN_NUM,
          sum(case when ROLE_ID = 'SUBMITOR' THEN 1 ELSE 0 END) as SUBMITOR_NUM,
          sum(case when ROLE_ID = 'CHECKER' THEN 1 ELSE 0 END) as CHECKER_NUM,
          sum(case when ROLE_ID = 'GRANTOR' THEN 1 ELSE 0 END) as GRANTOR_NUM,
          to_char(wm_concat(case when ROLE_ID = 'ADMIN' THEN cert.cci_userno ELSE null END)) as ADMIN_USER,
          to_char(wm_concat(case when ROLE_ID = 'SUBMITOR' THEN cert.cci_userno ELSE null END)) as SUBMITOR_USER,
          to_char(wm_concat(case when ROLE_ID = 'CHECKER' THEN cert.cci_userno ELSE null END)) as CHECKER_USER,
          to_char(wm_concat(case when ROLE_ID = 'GRANTOR' THEN cert.cci_userno ELSE null END)) as GRANTOR_USER
     from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
    where substr(auth.ncid, 2) = cert.cci_cstno
      and instr(auth.oids, cert.cci_userno) > 0
    group by cert.cci_cstno, cert.cci_certid;

    --2、遍历企业客户号
  FOR cstInfos IN (select distinct cci_cstno
                      from CB_CERT_INF
                     where cci_cstno not like 'CB%'
                     --and  cci_cstno in('0000001520')
                     order by cci_cstno)
  LOOP
    checkCertFlag := NULL;
    grantCertFlag := NULL;
    submitCertFlag := NULL;

    submitUserId := NULL;
    checkUserId := NULL;
    grantUserId := NULL;

    userRight := NULL;
    userAuthLvl := NULL;
    SED_CERTID := NULL;
    SED_OIDS := NULL;
    SED_ADMIN_NUM := 0;
    SED_ADMIN_USER := NULL;
    SED_SUBMITOR_NUM := 0;
    SED_SUBMITOR_USER := NULL;
    SED_CHECKER_NUM := 0;

    SED_GRANTOR_NUM := 0;
    SED_GRANTOR_USER := NULL;
    EXT_USER_NUM := 0;
    
    DONE_SUBMIT_USER := NULL;
    EXCLUDE_SUBMIT_USER := NULL;
    INCLUDE_SUBMIT_USER := NULL;
    INCLUDE_SUBMIT_KEY := NULL;

    --查询当前企业含有证书个数
    certNum := 0;
    select count(distinct cci_certid)
      into certNum
      from CB_CERT_INF
    where cci_cstno = cstInfos.cci_cstno;

    transflowFlag := FUNC_GET_TRANSFLOW(cstInfos.cci_cstno, certNum);
    --含一步模式
    IF transflowFlag >= 1 THEN
       submitCertFlag := '0';
      --遍历拥有录入角色人员证书的证书、角色、人员信息
      FOR certRoleUser in(
              select REF.CCI_CERTID,
                     REF.ROLE_IDS,
                     REF.OIDS,
                     REF.CERT_NUM,
                     REF.ADMIN_NUM,
                     REF.SUBMITOR_NUM,
                     REF.CHECKER_NUM,
                     REF.GRANTOR_NUM,
                     REF.ADMIN_USER,
                     REF.SUBMITOR_USER,
                     REF.CHECKER_USER,
                     REF.GRANTOR_USER
              from TEMP_CERT_ROLE_USER_REF REF
              where cci_certid in(
              select distinct cert.cci_certid
                from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
               where substr(auth.ncid, 2) = cert.cci_cstno
                 and instr(auth.oids, cert.cci_userno) > 0
                 and auth.role_id = 'SUBMITOR'
                 and cert.cci_cstno = cstInfos.cci_cstno))
       LOOP
           submitUserId := NULL;
           SED_CERTID := certRoleUser.cci_certid;
           SED_OIDS := certRoleUser.oids;
           SED_SUBMITOR_NUM := certRoleUser.submitor_num;
           --只有一个录入角色人员使用此UKEY场合
           IF SED_SUBMITOR_NUM = 1 THEN
              submitUserId := certRoleUser.submitor_user;
           --多个录入角色公用此UKEY场合
           ELSIF SED_SUBMITOR_NUM > 1 THEN
               --获取分配UKEY的录入角色人员
               submitUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'SUBMITOR', SED_OIDS);
           END IF;

           --确定录入角色场合
           IF submitUserId IS NOT NULL THEN
                  --将选择用户使用同样UKEY的所有用户UKEY ID设置为空
                  update CB_CERT_INF cert
                    set cert.cci_certid = null
                  where cert.cci_certid = SED_CERTID
                    and cert.cci_userno != submitUserId;
                  commit;
                  submitCertFlag := '1';
           END IF;
       END LOOP;
    END IF;

    --含三步模式，处理复核人员ukey
    IF transflowFlag > 2 THEN
      checkCertFlag := '0';
      --遍历拥有复核角色人员证书的证书、角色、人员信息
      FOR certRoleUser in(
              select REF.CCI_CERTID,
                     REF.ROLE_IDS,
                     REF.OIDS,
                     REF.CERT_NUM,
                     REF.ADMIN_NUM,
                     REF.SUBMITOR_NUM,
                     REF.CHECKER_NUM,
                     REF.GRANTOR_NUM,
                     REF.ADMIN_USER,
                     REF.SUBMITOR_USER,
                     REF.CHECKER_USER,
                     REF.GRANTOR_USER
              from TEMP_CERT_ROLE_USER_REF REF
              where cci_certid in(
              select distinct cert.cci_certid
                from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
               where substr(auth.ncid, 2) = cert.cci_cstno
                 and instr(auth.oids, cert.cci_userno) > 0
                 and auth.role_id = 'CHECKER'
                 and cert.cci_cstno = cstInfos.cci_cstno))
       LOOP
           checkUserId := NULL;
           SED_CERTID := certRoleUser.cci_certid;
           SED_OIDS := certRoleUser.checker_user;
           SED_CHECKER_NUM := certRoleUser.checker_num;
           --只有一个复核角色人员使用此UKEY场合
           IF SED_CHECKER_NUM = 1 THEN
              checkUserId := SED_OIDS;
           --多个复核角色公用此UKEY场合
           ELSIF SED_CHECKER_NUM > 1 THEN
               --获取分配UKEY的复核角色人员
               checkUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'CHECKER', SED_OIDS);
           END IF;

           --确定复核角色场合
           IF checkUserId IS NOT NULL THEN
                  --将选择用户使用同样UKEY的所有用户UKEY ID设置为空
                  update CB_CERT_INF cert
                    set cert.cci_certid = null
                  where cert.cci_certid = SED_CERTID
                    and cert.cci_userno != checkUserId;
                  commit;
                  checkCertFlag := '1';
           END IF;
       END LOOP;
       --复核角色查询不到证书场合
       IF checkCertFlag = '0' THEN
             SED_CERTID := NULL;
             --查询复核角色人员使用了哪些UKEY
             FOR chechCertInfo IN(
                SELECT REF.CCI_CERTID,
                       REF.ADMIN_NUM,
                       REF.SUBMITOR_NUM,
                       REF.CHECKER_NUM,
                       REF.GRANTOR_NUM,
                       REF.ADMIN_USER,
                       REF.SUBMITOR_USER,
                       REF.CHECKER_USER,
                       REF.GRANTOR_USER
                FROM TEMP_CERT_ROLE_USER_REF REF
                WHERE REF.CCI_CSTNO = cstInfos.cci_cstno
                 AND INSTR(ROLE_IDS, 'CHECKER') > 0)
             LOOP
                SED_CERTID := chechCertInfo.CCI_CERTID;
                --查询录入角色人员去除此UKEY后还拥有UKEY人数
                SELECT COUNT(cert.cci_userno) into EXT_USER_NUM
                 FROM TEMP_ROLE_USER_REF, CB_CERT_INF cert
                WHERE substr(NCID, 2) = cert.cci_cstno
                  AND substr(NCID, 2) = cstInfos.cci_cstno
                  AND INSTR(OIDS, cert.cci_userno) > 0
                  AND ROLE_ID = 'SUBMITOR'
                  AND cert.cci_certid IS NOT NULL
                  AND cert.cci_certid != SED_CERTID;
                --有多余录入人员场合
                IF EXT_USER_NUM > 0 THEN
                   --确认将选择的UKEY分配给哪位复核人员
                   checkUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'CHECKER', NULL);
                  --查询到UKEY和复核人员信息退出循环
                  IF SED_CERTID IS NOT NULL AND checkUserId IS NOT NULL THEN
                    EXIT;
                  END IF;
                END IF;
             END LOOP;
             --复核角色查询不到证书且录入人员无多余证书可用场合
             IF checkUserId IS NULL THEN
               --将系统管理管和主管拥有UKEY中且不含授权角色的证书分配给复核人员
               --查询证书个数
                SED_ADMIN_NUM := 0;
                SELECT count(REF.CCI_CERTID) INTO SED_ADMIN_NUM
                FROM TEMP_CERT_ROLE_USER_REF REF, CB_CERT_INF CERT
                WHERE REF.CCI_CERTID = CERT.CCI_CERTID
                 AND REF.CCI_CSTNO = cstInfos.cci_cstno
                 AND INSTR(ROLE_IDS, 'ADMIN') > 0
                 AND INSTR(REF.ADMIN_USER, CERT.CCI_USERNO) > 0
                 AND GRANTOR_NUM = 0;
               --管理角色有UKEY供分配场合
               IF SED_ADMIN_NUM > 0 THEN
                   FOR adminCerts IN(SELECT REF.CCI_CERTID,
                               REF.ADMIN_NUM,
                               REF.SUBMITOR_NUM,
                               REF.CHECKER_NUM,
                               REF.GRANTOR_NUM,
                               REF.ADMIN_USER,
                               REF.SUBMITOR_USER,
                               REF.CHECKER_USER,
                               REF.GRANTOR_USER
                        FROM TEMP_CERT_ROLE_USER_REF REF, CB_CERT_INF CERT
                        WHERE REF.CCI_CERTID = CERT.CCI_CERTID
                         AND REF.CCI_CSTNO = cstInfos.cci_cstno
                         AND INSTR(ROLE_IDS, 'ADMIN') > 0
                         AND INSTR(REF.ADMIN_USER, CERT.CCI_USERNO) > 0
                         AND GRANTOR_NUM = 0)
                    LOOP
                         SED_CERTID := adminCerts.cci_certid;
                         checkUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'CHECKER', NULL);
                         IF checkUserId IS NOT NULL THEN
                           EXIT;
                         END IF;
                     END LOOP;
             --管理角色无UKEY分配场合，分配授权人员UKEY给复核人员多余使用
             ELSIF SED_ADMIN_NUM = 0 THEN
                   DBMS_OUTPUT.PUT_LINE('无法分配角色' || '---->' || cstInfos.cci_cstno);
             END IF;
         END IF;
         --确定复核角色场合
         IF checkCertFlag != '1' AND SED_CERTID IS NOT NULL AND checkUserId IS NOT NULL THEN
                --将选择的证书分配给选定的复核人员
                delete from CB_CERT_INF cert
                where cert.cci_cstno = cstInfos.cci_cstno
                  and cert.cci_userno = checkUserId;

                update CB_CERT_INF cert
                  set cert.cci_userno = checkUserId
                where cert.cci_certid = SED_CERTID;

                --将选择选择的证书其他使用人员数据置空
                update CB_CERT_INF cert
                  set cert.cci_certid = null
                where cert.cci_userno !=  checkUserId and cert.cci_certid = SED_CERTID;

                commit;
                checkCertFlag := '1';
          END IF;
        END IF;
    END IF;

    --含两步模式,处理授权人员ukey
    IF transflowFlag >= 2 THEN
      grantCertFlag := '0';
      --遍历拥有授权角色人员证书的证书、角色、人员信息
      FOR certRoleUser in(
              select REF.CCI_CERTID,
                     REF.ROLE_IDS,
                     REF.OIDS,
                     REF.CERT_NUM,
                     REF.ADMIN_NUM,
                     REF.SUBMITOR_NUM,
                     REF.CHECKER_NUM,
                     REF.GRANTOR_NUM,
                     REF.ADMIN_USER,
                     REF.SUBMITOR_USER,
                     REF.CHECKER_USER,
                     REF.GRANTOR_USER
              from TEMP_CERT_ROLE_USER_REF REF
              where cci_certid in(
              select distinct cert.cci_certid
                from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
               where substr(auth.ncid, 2) = cert.cci_cstno
                 and instr(auth.oids, cert.cci_userno) > 0
                 and auth.role_id = 'GRANTOR'
                 and cert.cci_cstno = cstInfos.cci_cstno))
        LOOP
           grantUserId := NULL;
           SED_CERTID := certRoleUser.cci_certid;
           SED_OIDS := certRoleUser.grantor_user;
           SED_GRANTOR_NUM := certRoleUser.grantor_num;
           --只有一授权角色人员使用此UKEY场合
           IF SED_GRANTOR_NUM = 1 THEN
              grantUserId := SED_OIDS;
           --多个授权角色公用此UKEY场合
           ELSIF SED_GRANTOR_NUM > 1 THEN
               --获取分配UKEY的复核角色人员
               grantUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'GRANTOR', SED_OIDS);
           END IF;

           --确定授权角色场合
           IF grantUserId IS NOT NULL THEN
                  --将选择用户使用同样UKEY的所有用户UKEY ID设置为空
                  update CB_CERT_INF cert
                    set cert.cci_certid = null
                  where cert.cci_certid = SED_CERTID
                    and cert.cci_userno != grantUserId;
                  commit;
                  grantCertFlag := '1';
           END IF;
        END LOOP;
       --包含复核步骤场合
       IF transflowFlag > 2 THEN
           --授权角色查询不到证书场合
           IF grantCertFlag = '0' THEN
                 SED_CERTID := NULL;
                 SED_GRANTOR_USER := NULL;
                 --查询授权角色人员使用了哪些UKEY
                 FOR grantCertInfo IN(
                    SELECT REF.CCI_CERTID,
                           REF.ADMIN_NUM,
                           REF.SUBMITOR_NUM,
                           REF.CHECKER_NUM,
                           REF.GRANTOR_NUM,
                           REF.ADMIN_USER,
                           REF.SUBMITOR_USER,
                           REF.CHECKER_USER,
                           REF.GRANTOR_USER
                    FROM TEMP_CERT_ROLE_USER_REF REF
                    WHERE REF.CCI_CSTNO = cstInfos.cci_cstno
                     AND INSTR(ROLE_IDS, 'GRANTOR') > 0)
                 LOOP
                    SED_CERTID := grantCertInfo.CCI_CERTID;

                    --查询复核角色人员去除此UKEY后还拥有UKEY人数
                    SELECT COUNT(cert.cci_userno) into EXT_USER_NUM
                     FROM TEMP_ROLE_USER_REF, CB_CERT_INF cert
                    WHERE substr(NCID, 2) = cert.cci_cstno
                      AND substr(NCID, 2) = cstInfos.cci_cstno
                      AND INSTR(OIDS, cert.cci_userno) > 0
                      AND ROLE_ID = 'CHECKER'
                      AND cert.cci_certid IS NOT NULL
                      AND cert.cci_certid != SED_CERTID;
                    --有多余复核人员场合
                    IF EXT_USER_NUM > 0 THEN
                       --确认将选择的UKEY分配给哪位授权人员
                       grantUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'GRANTOR', NULL);
                       --查询到UKEY和授权人员信息退出循环
                       IF SED_CERTID IS NOT NULL AND grantUserId IS NOT NULL THEN
                        EXIT;
                       END IF;
                    END IF;
                 END LOOP;
               END IF;
            END IF;
             --授权人员没有获取到多余UKEY场合
             IF grantUserId IS NULL THEN
                 --查询授权角色人员使用了哪些UKEY
                 FOR grantCertInfo IN(
                    SELECT REF.CCI_CERTID,
                           REF.ADMIN_NUM,
                           REF.SUBMITOR_NUM,
                           REF.CHECKER_NUM,
                           REF.GRANTOR_NUM,
                           REF.ADMIN_USER,
                           REF.SUBMITOR_USER,
                           REF.CHECKER_USER,
                           REF.GRANTOR_USER
                    FROM TEMP_CERT_ROLE_USER_REF REF
                    WHERE REF.CCI_CSTNO = cstInfos.cci_cstno
                     AND INSTR(ROLE_IDS, 'GRANTOR') > 0)
                 LOOP
                    SED_CERTID := grantCertInfo.CCI_CERTID;
                    --查询录入角色人员去除此UKEY后还拥有UKEY人数
                    SELECT COUNT(cert.cci_userno) into EXT_USER_NUM
                     FROM TEMP_ROLE_USER_REF, CB_CERT_INF cert
                    WHERE substr(NCID, 2) = cert.cci_cstno
                      AND substr(NCID, 2) = cstInfos.cci_cstno
                      AND INSTR(OIDS, cert.cci_userno) > 0
                      AND ROLE_ID = 'SUBMITOR'
                      AND cert.cci_certid IS NOT NULL
                      AND cert.cci_certid != SED_CERTID;
                    --有多余录入人员场合
                    IF EXT_USER_NUM > 0 THEN
                       --确认将选择的UKEY分配给哪位授权人员
                       grantUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'GRANTOR', NULL);
                      --查询到UKEY和复核人员信息退出循环
                      IF SED_CERTID IS NOT NULL AND grantUserId IS NOT NULL THEN
                        EXIT;
                      END IF;
                    END IF;
                 END LOOP;
             END IF;

             --复核、录入角色查询不到证书且录入人员无多余证书可用场合
             IF grantUserId IS NULL THEN
               --将系统管理管和主管拥有UKEY中仍拥有的UKEY分配给授权人员
               --查询证书个数
                SED_ADMIN_NUM := 0;
                SELECT count(REF.CCI_CERTID) INTO SED_ADMIN_NUM
                FROM TEMP_CERT_ROLE_USER_REF REF, CB_CERT_INF CERT
                WHERE REF.CCI_CERTID = CERT.CCI_CERTID
                 AND REF.CCI_CSTNO = cstInfos.cci_cstno
                 AND INSTR(REF.ADMIN_USER, CERT.CCI_USERNO) > 0
                 AND INSTR(ROLE_IDS, 'ADMIN') > 0;
               --管理角色有UKEY供分配场合
               IF SED_ADMIN_NUM > 0 THEN
                   FOR adminCerts IN(SELECT REF.CCI_CERTID,
                               REF.ADMIN_NUM,
                               REF.SUBMITOR_NUM,
                               REF.CHECKER_NUM,
                               REF.GRANTOR_NUM,
                               REF.ADMIN_USER,
                               REF.SUBMITOR_USER,
                               REF.CHECKER_USER,
                               REF.GRANTOR_USER
                        FROM TEMP_CERT_ROLE_USER_REF REF, CB_CERT_INF CERT
                        WHERE REF.CCI_CERTID = CERT.CCI_CERTID
                         AND REF.CCI_CSTNO = cstInfos.cci_cstno
                         AND INSTR(REF.ADMIN_USER, CERT.CCI_USERNO) > 0
                         AND INSTR(ROLE_IDS, 'ADMIN') > 0)
                    LOOP
                         SED_CERTID := adminCerts.cci_certid;
                         grantUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'GRANTOR', NULL);
                         IF grantUserId IS NOT NULL THEN
                           EXIT;
                         END IF;
                     END LOOP;
             --管理角色无UKEY分配场合，分配授权人员UKEY给复核人员多余使用
             ELSIF SED_ADMIN_NUM = 0 THEN
                   DBMS_OUTPUT.PUT_LINE('无法分配角色' || '---->' || cstInfos.cci_cstno);
             END IF;
         END IF;
         --确定授权角色场合
         IF grantCertFlag != '1' AND SED_CERTID IS NOT NULL AND grantUserId IS NOT NULL THEN
                --将选择的证书分配给选定的授权人员
                delete from  CB_CERT_INF cert
                where cert.cci_cstno = cstInfos.cci_cstno
                  and cert.cci_userno = grantUserId;

                update CB_CERT_INF cert
                  set cert.cci_userno = grantUserId
                where cert.cci_certid = SED_CERTID;

                --将选择选择的证书其他使用人员数据置空
                update CB_CERT_INF cert
                  set cert.cci_certid = null
                where cert.cci_userno !=  grantUserId and cert.cci_certid = SED_CERTID;
                commit;
                grantCertFlag := '1';
          END IF;
        END IF;

    --复核和授权角色经过UKEY分配后，如复核角色未有分配到UKEY，
    --再次查询授权人员是否有多余UKEY分配给复核人员
    IF checkCertFlag  = 0 and transflowFlag > 2 THEN
       SED_CERTID := NULL;
       --查询复核角色人员使用了哪些UKEY
       FOR chechCertInfo IN(
          SELECT REF.CCI_CERTID,
                 REF.ADMIN_NUM,
                 REF.SUBMITOR_NUM,
                 REF.CHECKER_NUM,
                 REF.GRANTOR_NUM,
                 REF.ADMIN_USER,
                 REF.SUBMITOR_USER,
                 REF.CHECKER_USER,
                 REF.GRANTOR_USER
          FROM TEMP_CERT_ROLE_USER_REF REF
          WHERE REF.CCI_CSTNO = cstInfos.cci_cstno
           AND INSTR(ROLE_IDS, 'CHECKER') > 0)
       LOOP
          SED_CERTID := chechCertInfo.CCI_CERTID;
          --查询授权角色人员去除此UKEY后还拥有UKEY人数
          SELECT COUNT(cert.cci_userno) into EXT_USER_NUM
           FROM TEMP_ROLE_USER_REF, CB_CERT_INF cert
          WHERE substr(NCID, 2) = cert.cci_cstno
            AND substr(NCID, 2) = cstInfos.cci_cstno
            AND INSTR(OIDS, cert.cci_userno) > 0
            AND ROLE_ID = 'GRANTOR'
            AND cert.cci_certid IS NOT NULL
            AND cert.cci_certid != SED_CERTID;
          --有多余授权人员场合
          IF EXT_USER_NUM > 0 THEN
            --确认将选择的UKEY分配给哪位复核人员
             checkUserId := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'CHECKER', NULL);
            --查询到UKEY和复核人员信息退出循环
            IF SED_CERTID IS NOT NULL AND checkUserId IS NOT NULL THEN
              EXIT;
            END IF;
          END IF;
       END LOOP;

       --确定复核角色场合
       IF checkCertFlag != '1' AND SED_CERTID IS NOT NULL AND checkUserId IS NOT NULL THEN
              --将选择的证书分配给选定的复核人员
              delete from  CB_CERT_INF cert
              where cert.cci_cstno = cstInfos.cci_cstno
                and cert.cci_userno = checkUserId;

              update CB_CERT_INF cert
                set cert.cci_userno = checkUserId
              where cert.cci_certid = SED_CERTID;

              --将选择选择的证书其他使用人员数据置空
              update CB_CERT_INF cert
                set cert.cci_certid = null
              where cert.cci_userno !=  checkUserId and cert.cci_certid = SED_CERTID;

              commit;
              checkCertFlag := '1';
        END IF;
    END IF;

    /* 只含有多个录入角色，筛选后系统主管、系统管理员均无UKEY场合，分配给系统主管或系统管理员一个UKEY*/
     --查询筛选后该企业录入人员人数
     select count(cert.cci_userno) INTO SUBMIT_USER_NUM
      from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
     where substr(auth.ncid, 2) = cert.cci_cstno
       and instr(auth.oids, cert.cci_userno) > 0
       and auth.role_id = 'SUBMITOR'
       and cert.cci_cstno = cstInfos.cci_cstno
       and cert.cci_certid IS NOT NULL;
    --录入人员大于1人
    IF SUBMIT_USER_NUM > 1 THEN
         --查询筛选后该企业录入人员人数        
         SELECT COUNT(*) INTO CHECK_GRANT_NUM
         FROM TEMP_ROLE_USER_REF 
         WHERE ROLE_ID IN('CHECKER', 'GRANTOR') 
           AND SUBSTR(ncid ,2) = cstInfos.cci_cstno;
        --不含有复核或授权角色
        IF CHECK_GRANT_NUM = 0 THEN
               --查询筛选后该企业管理人员人数
               select count(cert.cci_userno) INTO ADMIN_USER_NUM
                from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
               where substr(auth.ncid, 2) = cert.cci_cstno
                 and instr(auth.oids, cert.cci_userno) > 0
                 and auth.role_id = 'ADMIN'
                 and cert.cci_cstno = cstInfos.cci_cstno
                 and cert.cci_certid IS NOT NULL;
                 --管理角色未分配UKEY
                 
                 IF ADMIN_USER_NUM = 0 THEN
                   select to_char(wm_concat(cert.cci_userno)) INTO DONE_SUBMIT_USER
                    from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
                   where substr(auth.ncid, 2) = cert.cci_cstno
                     and instr(auth.oids, cert.cci_userno) > 0
                     and auth.role_id = 'SUBMITOR'
                     and cert.cci_cstno =  cstInfos.cci_cstno
                     and cert.cci_certid IS NOT NULL
                    GROUP BY cert.cci_cstno;
                    IF DONE_SUBMIT_USER IS NOT NULL THEN
                       EXCLUDE_SUBMIT_USER := FUNC_GET_SELECTED_USER(cstInfos.cci_cstno,'SUBMITOR', DONE_SUBMIT_USER);
                       IF EXCLUDE_SUBMIT_USER IS NOT NULL THEN
                              SELECT cci_userno, cci_certid INTO INCLUDE_SUBMIT_USER, INCLUDE_SUBMIT_KEY
                              FROM
                                 (select cert.cci_userno, cert.cci_certid
                                  from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
                                 where substr(auth.ncid, 2) = cert.cci_cstno
                                   and instr(auth.oids, cert.cci_userno) > 0
                                   and auth.role_id = 'SUBMITOR'
                                   and cert.cci_cstno =  cstInfos.cci_cstno
                                   and cert.cci_certid IS NOT NULL
                                   and cert.cci_userno != EXCLUDE_SUBMIT_USER
                                  ORDER BY cci_userno DESC)
                               WHERE ROWNUM = 1;
                               
                               IF INCLUDE_SUBMIT_KEY IS NOT NULL THEN
                                 SELECT ADMIN_USER INTO SED_ADMIN_USER FROM TEMP_CERT_ROLE_USER_REF WHERE CCI_CERTID = INCLUDE_SUBMIT_KEY;
                                     IF SED_ADMIN_USER IS NOT NULL THEN
                                       ----删除选定分配人员原ueky信息
                                        delete from  CB_CERT_INF cert
                                        where cert.cci_cstno = cstInfos.cci_cstno
                                          and cert.cci_userno = SED_ADMIN_USER;
                                       --将ueky信息更新为选中管理角色人员
                                        update CB_CERT_INF cert
                                          set cert.cci_userno = SED_ADMIN_USER
                                        where cert.cci_certid = INCLUDE_SUBMIT_KEY;

                                        --将选择选择的UKEY其他使用人员数据置空
                                        update CB_CERT_INF cert
                                          set cert.cci_certid = null
                                        where cert.cci_userno !=  SED_ADMIN_USER and cert.cci_certid = INCLUDE_SUBMIT_KEY;
                                        commit;	
                                      END IF;
                               END IF;
                       END IF; 
                    END IF;
                 END IF;
        END IF;
    END IF;

  END LOOP;

  --首先删除没有被分配到UKEY的用户，证书信息表中的数据信息
   delete from CB_CERT_INF
   where cci_cstno not like 'CB%' and
         CCI_CERTTYPE = '0' and
         CCI_CERTID IS NULL;
   commit;

   --其次老网银系统中未被分配操作员角色人员
    delete from CB_CERT_INF
     where cci_cstno not like 'CB%'
       and CCI_CERTTYPE = '0'
       and CCI_USERNO in
           (select distinct substr(op.oid, 3) as userno
              from firmbank_ZHIJIANG.t_operator op
             where OPER_STATUS in ('1', '3')
               and op.oper_type = '2'
               and op.oid not in (select distinct oid
                                    from firmbank_ZHIJIANG.t_auth auth
                                   where auth.auth_status = '1'));
   commit;

     --查询系统主管和系统管理员重复UKEY数量
     REPEATE_UKEEY := -1;
     select count(op.oid) into REPEATE_UKEEY
     from firmbank_ZHIJIANG.t_operator op
     where (substr(op.ncid, 2), substr(op.oid, 3)) in
          (select cci_cstno, cci_userno
             from cb_cert_inf
            where cci_certId in (select cci_certId
                                   from cb_cert_inf
                                  group by cci_certId
                                 having count(cci_certId) > 1))
      and op.oper_type in ('0', '1');

    --当系统主管和系统管理员复用一把UKEY时，去除系统主管，保留系统管理员
    IF REPEATE_UKEEY = 2 THEN
           delete from cb_cert_inf cert
           where (cert.cci_cstno, cert.cci_userno) in
                 (select substr(op.ncid, 2) as cstno, substr(op.oid, 3) as userno
                    from firmbank_ZHIJIANG.t_operator op
                   where (substr(op.ncid, 2), substr(op.oid, 3)) in
                         (select cci_cstno, cci_userno
                            from cb_cert_inf
                           where cci_certId  in (select cci_certId from cb_cert_inf group by cci_certId having count(cci_certId) > 1)) --查询重复UKEY
                     and op.oper_type in ( '0') --查询主管
                  );
           commit;
    --当系统主管或系统管理与其它角色用户UKEY重复时，去除系统主管或系统管理
    ELSIF REPEATE_UKEEY > 0 THEN
        delete from cb_cert_inf cert
         where (cert.cci_cstno, cert.cci_userno) in
               (select substr(op.ncid, 2) as cstno, substr(op.oid, 3) as userno
                  from firmbank_ZHIJIANG.t_operator op
                 where (substr(op.ncid, 2), substr(op.oid, 3)) in
                       (select cci_cstno, cci_userno
                          from cb_cert_inf
                         where cci_certId  in (select cci_certId from cb_cert_inf group by cci_certId having count(cci_certId) > 1)) --查询重复UKEY
                   and op.oper_type in ('0', '1') --查询主管或系统管理用户
                );
         commit;
    END IF;
    --设置设置用户新网银权限
    FOR allUserInfo IN (select op.ncid,
                               op.oid,
                               cert.cci_certid,
                               op.oper_type
                          from FIRMBANK_ZHIJIANG.t_OPERATOR op,
                               cb_cert_inf cert
                         where substr(op.ncid, 2) = cert.cci_cstno
                           and substr(op.oid, 3) = cert.cci_userno
                           --and cert.cci_cstno = '0000001520'
                           )
    LOOP
      userAuthLvl := '0';
      userRight := func_get_user_right(substr(allUserInfo.ncid,2),
                                       substr(allUserInfo.oid,3),
                                       allUserInfo.oper_type);
      IF substr(userRight, 3, 1) = '1' THEN
        userAuthLvl := '1';
      END IF;

      update cb_user_inf usr
         set UIF_RIGHT = userRight, UIF_AUTHLVL = userAuthLvl
       where usr.uif_cstno =  substr(allUserInfo.ncid, 2)
         and usr.uif_userno = substr(allUserInfo.oid, 3);
    END LOOP;


   --存储选定经办角色操作员用户ID，供修改历史交易记录录入人信息使用
   FOR submitUserInfo IN(
       select uif_cstno,
              to_char(wm_concat(uif_userno)) as oids,
              count(uif_userno) as user_num
       from cb_user_inf
       where substr(UIF_RIGHT, 1, 1) = '1' and uif_cstno not like 'CB%'
       group by uif_cstno)
   LOOP
     submitUserId := NULL;
     SED_SUBMITOR_NUM := submitUserInfo.user_num;
     SED_SUBMITOR_USER := submitUserInfo.oids;
     IF SED_SUBMITOR_NUM = 1 THEN
        submitUserId := SED_SUBMITOR_USER;
     ELSIF  SED_SUBMITOR_NUM > 1 THEN
        submitUserId := FUNC_GET_SELECTED_USER(submitUserInfo.uif_cstno,'SUBMITOR', SED_SUBMITOR_USER);
     END IF;
     IF submitUserId is not null THEN
       insert into TEMP_LAST_TRANS_USER
         (cstno, userno, username)
       values
         (submitUserInfo.uif_cstno,
          submitUserId,
          (SELECT OPER_NAME
             FROM FIRMBANK_ZHIJIANG.t_OPERATOR OP
            where substr(OP.oid,3) = submitUserId
              and rownum = 1));
     END IF;
   END LOOP;
   COMMIT;

   --设置企业中心模式
   FOR cstInfo IN(
        select distinct cif_cstno from cb_cst_inf
        where cif_cstno not like 'CB%'
         --and cif_cstno = '0000001520'
        )
   LOOP
     CONSOLETYPE := FUNC_GET_CONSOLETYPE(cstInfo.cif_cstno);
     update cb_cst_inf cst
     set cst.cif_consoletype = CONSOLETYPE
     where cst.cif_cstno = cstInfo.cif_cstno;
   END LOOP;
   COMMIT;

end;
/
