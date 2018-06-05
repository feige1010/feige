CREATE OR REPLACE FUNCTION FUNC_GET_USER_RIGHT
(PARAM_CSTNO IN VARCHAR2, PARAM_USERNO IN VARCHAR2, PARAM_TYPE IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_USER_RIGHT
-- 说明：移植数据获取企业操作员用户权限设置
--
-- 输入参数：
-- PARAM_CSTNO ： 企业客户号
-- PARAM_USERNO ： 用户号
-- PARAM_TYPE ： 用户角色

-- 输出：
-- 用户

-- 最后修改人 ： gedw
-- 最后修改日期：2017.5.25
------------------------------------------------------------------------
 v_result   VARCHAR2 (10);
 v_twoStepNum integer;
 v_flow_step integer;
 v_userNum integer;
 v_certNum integer;
 v_adminNum integer;
BEGIN
 v_result := '00000';

 --如果为主管或系统管理场合
 IF PARAM_TYPE = '1' OR PARAM_TYPE = '0' THEN
    --查询授权步骤数
    v_certNum := 0;
    select count(distinct cci_certid)
      into v_certNum
      from CB_CERT_INF
    where cci_cstno = PARAM_CSTNO;
    v_flow_step :=  FUNC_GET_TRANSFLOW(PARAM_CSTNO, v_certNum);

     --查询录入角色是否有人员
     v_userNum := 0;
     select count(CERT.CCI_USERNO) into v_userNum
      from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
     where substr(REF.NCID,2) = CERT.CCI_CSTNO
       and instr(REF.oids, CERT.CCI_USERNO) > 0
       and substr(ncid,2) = PARAM_CSTNO
       and role_id = 'SUBMITOR';

     --确认系统主管或系统管理员角色是否分配UKEY
     v_adminNum := 0;
     select count(CERT.CCI_USERNO) into v_adminNum
      from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
     where substr(REF.NCID,2) = CERT.CCI_CSTNO
       and instr(REPLACE(REF.oids, PARAM_USERNO, ''), CERT.CCI_USERNO) > 0
       and substr(ncid,2) = PARAM_CSTNO
       and role_id = 'ADMIN';
 END IF;

 --系统主管角色
 IF PARAM_TYPE = '1' THEN
    --不存在录入人员场合
    IF v_userNum = 0 THEN
        --系统管理员未被分配UKEY场合，暂不做处理
        IF v_adminNum = 0 THEN
           --系统管理员未被分配UKEY场合，系统主管分配录入角色
           --v_result := '10000';
           v_result := '00000';
        END IF;
    --已存在录入角色场合
    ELSIF v_userNum > 0 THEN
      --包含授权角色场合
      IF v_flow_step >= 2 THEN
         --查询是否包含授权角色人员
         v_userNum := 0;
         select count(CERT.CCI_USERNO) into v_userNum
          from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
         where substr(REF.NCID,2) = CERT.CCI_CSTNO
           and instr(REF.oids, CERT.CCI_USERNO) > 0
           and substr(ncid,2) = PARAM_CSTNO
           and role_id = 'GRANTOR';
         --不存在授权角色场合
         IF v_userNum = 0 THEN
            --系统主管分配授权、管理角色
             v_result := '00110';
         END IF;
      END IF;

      --包含复核角色场合且未被分配授权角色
      IF v_flow_step > 2 and v_result = '00000' THEN
         --查询是否包含复核角色人员
         v_userNum := 0;
         select count(CERT.CCI_USERNO) into v_userNum
          from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
         where substr(REF.NCID,2) = CERT.CCI_CSTNO
           and instr(REF.oids, CERT.CCI_USERNO) > 0
           and substr(ncid,2) = PARAM_CSTNO
           and role_id = 'CHECKER';
         --不存在复核角色场合
         IF v_userNum = 0 THEN
            --系统管理员未被分配UKEY场合，系统主管分配复核、管理角色
            IF v_adminNum = 0 THEN
               v_result := '01010';
            END IF;
         END IF;
      END IF;
    END IF;
    --默认分配管理角色
    IF v_result = '00000' THEN
       v_result := '00010';
    END IF;
 --系统管理员角色
 ELSIF PARAM_TYPE = '0' THEN
    --不存在录入人员场合，暂不做处理
    IF v_userNum = 0 THEN
        --系统管理员分配录入角色
        -- v_result := '10000';
        v_result := '00000';
    --已存在录入角色场合
    ELSIF v_userNum > 0 THEN
      --包含授权角色场合
      IF v_flow_step >=2 THEN
         --查询是否包含授权角色人员
         v_userNum := 0;
         select count(CERT.CCI_USERNO) into v_userNum
          from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
         where substr(REF.NCID,2) = CERT.CCI_CSTNO
           and instr(REF.oids, CERT.CCI_USERNO) > 0
           and substr(ncid,2) = PARAM_CSTNO
           and role_id = 'GRANTOR';
         --不存在授权角色场合
         IF v_userNum = 0 THEN
            --系统主管未被分配UKEY场合，系统管理员分配授权、管理角色
            IF v_adminNum = 0 THEN
               v_result := '00110';
            END IF;
         END IF;
     END IF;

      --包含复核角色场合且未被分配授权角色
      IF v_flow_step > 2 and v_result = '00000' THEN
         --查询是否包含复核角色人员
         v_userNum := 0;
         select count(CERT.CCI_USERNO) into v_userNum
          from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
         where substr(REF.NCID,2) = CERT.CCI_CSTNO
           and instr(REF.oids, CERT.CCI_USERNO) > 0
           and substr(ncid,2) = PARAM_CSTNO
           and role_id = 'CHECKER';
         --不存在复核角色场合
         IF v_userNum = 0 THEN
            --系统管理员分配复核、管理角色
            v_result := '01010';
          END IF;
      END IF;
    END IF;
    --默认分配管理角色
    IF v_result = '00000' THEN
       v_result := '00010';
    END IF;
 ELSIF PARAM_TYPE = '2' THEN --操作员
    FOR roleIds IN(select distinct role_id from
                       FIRMBANK_ZHONGNING.t_auth auth,
                       FIRMBANK_ZHONGNING.t_auth_role aur
                    where auth.id_auth = aur.id_auth and
                          auth.auth_status = '1' and
                          substr(ncid,2) = PARAM_CSTNO and
                          substr(oid,3) = PARAM_USERNO )
    LOOP
       IF roleIds.Role_Id = 'SUBMITOR' THEN
          v_result := REGEXP_REPLACE(v_result, '0', '1', 1, 1 );
       ELSIF roleIds.Role_Id = 'CHECKER' THEN
          v_result := REGEXP_REPLACE(v_result, '0', '1', 2, 1 );
          v_result := REGEXP_REPLACE(v_result, '0', '1', 4, 1 );
       ELSIF  roleIds.Role_Id = 'GRANTOR' THEN
          v_result := REGEXP_REPLACE(v_result, '0', '1', 3, 1 );
          v_result := REGEXP_REPLACE(v_result, '0', '1', 4, 1 );
       END IF;
    END LOOP;

    IF substr(v_result, 1, 1) = '1' and
       (substr(v_result, 2, 1) = '1' or substr(v_result, 3, 1) = '1') THEN --同时具有录入,授权或复核角色时只保留录入角色
       v_result := '10000';
    END IF;
 END IF;
return v_result;
END FUNC_GET_USER_RIGHT;
/
