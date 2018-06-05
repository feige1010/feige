CREATE OR REPLACE FUNCTION FUNC_GET_CST_OPENNODE
(PARAM_CSTNO IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_CST_OPENNODE
-- 说明：根据输入的客户号返回核心表查询到的开户机构编码
--
-- 输入参数：
-- IN_ACCT_NO ： 客户号

-- 输出：
-- 核心表查询到的开户机构编码

-- 最后修改人 ： gedw
-- 最后修改日期：2016.11.18
------------------------------------------------------------------------
 v_result   VARCHAR2 (10);
BEGIN
 SELECT clt.CTRL_BRANCH INTO v_result
 FROM fm_client clt
WHERE
    CLIENT_NO = PARAM_CSTNO AND
    ROWNUM = 1;
 RETURN v_result;
 EXCEPTION
      WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE(PARAM_CSTNO);
      RETURN v_result;
END;
/
