CREATE OR REPLACE FUNCTION FUNC_GET_SELECTED_USER
(PARAM_CSTNO IN VARCHAR2, PARAM_ROLE IN VARCHAR2, PARAM_OIDS IN VARCHAR2)
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
 SED_CHECKER_USER VARCHAR2(128);
 SED_CHECKER_NUM integer;
BEGIN
     SED_CHECKER_USER := NULL;
     SED_CHECKER_NUM := 0;
     v_result := NULL;
     --录入角色场合，在指定用户中选择一个人员
     IF PARAM_ROLE = 'SUBMITOR' THEN
        --查找当前企业最近一次做过交易经办角色操作员
        begin
          select substr(owner,3) into v_result
            from (select enty.owner
                    from FIRMBANK_ZHONGNING.t_bf_entry enty
                   where owner in
                         (select distinct auth.oid
                            from FIRMBANK_ZHONGNING.t_auth  auth,
                                 FIRMBANK_ZHONGNING.t_auth_role rl
                           where auth.id_auth = rl.id_auth(+)
                             and rl.role_id = PARAM_ROLE --经办角色操作员
                             and auth.auth_status = '1' --只查询激活状态数据
                             and SUBSTR(auth.ncid,2) = PARAM_CSTNO
                             and instr(PARAM_OIDS,substr(auth.oid, 3)) > 0
                             )
                   order by start_time desc)
           where rownum = 1;
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            --该企业暂未做过任何交易，查找最近一次被授权经办角色操作员
            begin
              select substr(oid,3) into v_result
                from (select oid
                        from FIRMBANK_ZHONGNING.t_auth auth,
                             FIRMBANK_ZHONGNING.t_auth_role rl
                       where auth.id_auth = rl.id_auth(+)
                         and auth.auth_status = '1'
                         and rl.role_id = 'SUBMITOR'
                         and  SUBSTR(auth.ncid,2) = PARAM_CSTNO
                         and instr(PARAM_OIDS,substr(auth.oid, 3)) > 0
                       order by issue_time desc)
               where rownum = 1;
            EXCEPTION
              WHEN NO_DATA_FOUND THEN
                 DBMS_OUTPUT.PUT_LINE('无法分配角色' || '---->' || PARAM_CSTNO);
            end;
        end;
     --复核、授权场合
     ELSE
        --在指定用户中选择一个
        IF PARAM_OIDS IS NOT NULL THEN
          SED_CHECKER_USER := PARAM_OIDS;
          IF INSTR(SED_CHECKER_USER, ',') > 1 THEN
             SED_CHECKER_NUM := 2;
          ELSE
             SED_CHECKER_NUM := 1;
          END IF;
        --在所有的相同角色用户中选择一个
        ELSE
          BEGIN
          select RUR.OIDS, RUR.ROLE_NUM into SED_CHECKER_USER, SED_CHECKER_NUM
          from TEMP_ROLE_USER_REF RUR
          where substr(RUR.ncid,2) = PARAM_CSTNO
           and RUR.role_id = PARAM_ROLE;
          EXCEPTION
          WHEN NO_DATA_FOUND THEN
             DBMS_OUTPUT.PUT_LINE('无法分配角色' || '---->' || PARAM_CSTNO|| '---->' || SED_CHECKER_USER || SED_CHECKER_NUM);
          END;
        END IF;

        IF SED_CHECKER_NUM = 1 THEN
            v_result := SED_CHECKER_USER;
        ELSIF SED_CHECKER_NUM > 1 THEN
            --查找最近一次做过操作的操作员
            BEGIN
                  SELECT USERID INTO v_result
                  FROM
                  (SELECT SUBSTR(OWNER, 3) AS USERID
                    FROM FIRMBANK_ZHONGNING.T_BF_HISTORY_STEP
                   WHERE INSTR(SED_CHECKER_USER, SUBSTR(OWNER, 3)) > 0
                   order by START_TIME DESC)
                  WHERE ROWNUM = 1;
            EXCEPTION
            WHEN NO_DATA_FOUND THEN
               --该复核人员未做复核操作，查找最近被授权操作员
                BEGIN
                  select substr(oid,3) into v_result
                    from (select oid
                            from FIRMBANK_ZHONGNING.t_auth auth,
                                 FIRMBANK_ZHONGNING.t_auth_role rl
                           where auth.id_auth = rl.id_auth(+)
                             and auth.auth_status = '1'
                             and rl.role_id = PARAM_ROLE
                             and SUBSTR(auth.ncid, 2) = PARAM_CSTNO
                             and instr(SED_CHECKER_USER,substr(auth.oid, 3)) > 0
                           order by issue_time desc)
                   where rownum = 1;
                EXCEPTION
                  WHEN NO_DATA_FOUND THEN
                    DBMS_OUTPUT.PUT_LINE('无法分配角色' || '---->' || PARAM_CSTNO);
                END;
            END;
        END IF;
    END IF;
return v_result;
END FUNC_GET_SELECTED_USER;
/
