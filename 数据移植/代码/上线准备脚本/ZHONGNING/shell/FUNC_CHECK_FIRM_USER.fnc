CREATE OR REPLACE FUNCTION FUNC_CHECK_FIRM_USER
(PARAM_CSTNO IN VARCHAR2, PARAM_RIGHT IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_CHECK_FIRM_USER
-- 说明：确认企业是否有指定角色的用户
--
-- 输入参数：
-- PARAM_CSTNO ： 企业客户号
-- PARAM_RIGHT：CHECKER：复核角色 GRANTOR：授权角色
-- 输出：企业是指定角色的用户人数


-- 最后修改人 ： gedw
-- 最后修改日期：2017.01.04
------------------------------------------------------------------------
 v_result integer (1);
BEGIN
  v_result := 0;
  IF PARAM_RIGHT = 'CHECKER' THEN
    SELECT COUNT(1) INTO v_result FROM CB_USER_INF
    WHERE UIF_CSTNO = SUBSTR(PARAM_CSTNO,2)
      AND substr(UIF_RIGHT, 2, 1) = '1';
  ELSIF PARAM_RIGHT = 'GRANTOR' THEN
    SELECT COUNT(1) INTO v_result FROM CB_USER_INF
    WHERE UIF_CSTNO = SUBSTR(PARAM_CSTNO,2)
      AND substr(UIF_RIGHT, 2, 1) = '1';
  END IF;
return v_result;
END FUNC_CHECK_FIRM_USER;
/
