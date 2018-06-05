--/
CREATE OR REPLACE FUNCTION FUNC_GET_ACCT_OPENNODE
(IN_ACCT_NO IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_ACCT_OPENNODE
-- 说明：根据输入的账户号返回核心表查询到的开户机构编码
--
-- 输入参数：
-- IN_ACCT_NO ： 账户号

-- 输出：
-- 核心表查询到的开户机构编码

-- 最后修改人 ： gedw
-- 最后修改日期：2016.11.11
------------------------------------------------------------------------
 v_result   VARCHAR2 (10);
BEGIN
SELECT
    BRANCH INTO v_result
FROM
    (
        SELECT
            b.BRANCH 
        FROM
            rb_acct b ,
            cd_card_mainacc a
        WHERE
            b.base_acct_no = a.main_acc_no(+)
        AND (
                b.base_acct_no = IN_ACCT_NO
            OR  a.CARD_NO = IN_ACCT_NO))
WHERE
    ROWNUM = 1;
    RETURN v_result;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN 
      --DBMS_OUTPUT.PUT_LINE(IN_ACCT_NO);
      RETURN v_result;
END;
/
