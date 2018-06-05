CREATE OR REPLACE FUNCTION FUNC_GET_DEFAULT_USERNO(PARAM_CSTNO IN VARCHAR2)
  RETURN VARCHAR2 IS
  ------------------------------------------------------------------------
  -- FUNCTION :FUNC_GET_USER_RIGHT
  -- 说明：获取默认录入角色人员用户号，取最大编号录入人员，鼎业用
  --
  -- 输入参数：
  -- PARAM_CSTNO ： 企业客户号
  -- 输出：
  -- 用户号

  -- 最后修改人 ： gedw
  -- 最后修改日期：2017.6.7
  ------------------------------------------------------------------------
  V_RESULT VARCHAR2(10);
BEGIN
  V_RESULT := '';
  BEGIN
    SELECT UIF_USERNO
      INTO V_RESULT
      FROM (SELECT UIF_USERNO
              FROM CB_USER_INF
             WHERE SUBSTR(UIF_RIGHT, 1, 1) = 1
               AND UIF_CSTNO = PARAM_CSTNO
             ORDER BY UIF_USERNO DESC)
     WHERE ROWNUM = 1;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      V_RESULT := '';
  END;
  RETURN V_RESULT;
END FUNC_GET_DEFAULT_USERNO;
/
