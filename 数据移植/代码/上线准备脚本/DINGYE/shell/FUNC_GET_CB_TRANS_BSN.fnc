CREATE OR REPLACE FUNCTION "FUNC_GET_CB_TRANS_BSN"(
		PARAM_CST_NO IN VARCHAR2, PARAM_TO_ACCT IN  VARCHAR2
		)
	RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_CB_TRANS_BSN
-- 说明：企业银行根据根传入付款企业客户号、收款账户号计算交易编码
--
-- 输入参数：
-- PARAM_CST_NO : 企业客户号
-- PARAM_TO_ACCT 收款账户号
-- 输出：交易编码
-- 最后修改人 ： gedw
-- 最后修改日期：2016.11.11
------------------------------------------------------------------------
	v_result   VARCHAR2 (14);
	v_isSameBank VARCHAR2 (1);
	v_count INT;
BEGIN
        v_isSameBank := FUNC_SAME_BANK_ACCT(PARAM_TO_ACCT);
        IF v_isSameBank = '0' THEN  --跨行转账
           v_result := '10200300';
        ELSE
                SELECT
                   COUNT(b.CLIENT_NO) into v_count
                FROM
                    rb_acct b ,
                    cd_card_mainacc a
                WHERE
                    b.base_acct_no = a.main_acc_no(+)
                AND (b.base_acct_no = PARAM_TO_ACCT OR  a.CARD_NO = PARAM_TO_ACCT)
                AND b.CLIENT_NO = PARAM_CST_NO;
                IF v_count = 0 THEN --行内转账
                   v_result := '10200000';
                ELSE                 --行内同名转账
                     v_result := '10200001';
                END IF;
        END IF;
	RETURN v_result;

END FUNC_GET_CB_TRANS_BSN;
/
