CREATE OR REPLACE PROCEDURE CB_MOVE_INTO_CB_CST_PAYEE
 AS --迁移新大陆 企业银行 企业会员收款人名册
BEGIN
  INSERT INTO CB_CST_PAYEE
    (CCP_CSTNO,
     CCP_ACCNO,
     CCP_ACCBANKTYPE,
     CCP_TRANCHANNEL,
     CCP_ACCNAME,
     CCP_ACCALIASNAME,
     CCP_UNIONBANKNO,
     CCP_RECBANK,
     CCP_USERID,
     CCP_COMMON)
    SELECT SUBSTR(US.NCID, 2) AS NCID,
           US.ACCT_ID,
           (CASE INTRA_BANK
             WHEN 'Y' THEN
              '0' --行内转账
             WHEN 'N' THEN
              '1' --跨行转账
             ELSE
              NULL
           END) AS INTRA_BANK,
           (CASE INTRA_BANK
             WHEN 'Y' THEN
              '3'
             WHEN 'N' THEN
              '0'
             ELSE
              NULL
           END) TRANCHANNEL, --跨行转账默认设置为跨行普通转账
           US.NAME,
           (CASE
             WHEN LENGTHB(US.ALIAS_NAME) < = 30 THEN
              US.ALIAS_NAME
             ELSE
              NULL
           END) AS ALIAS_NAME,
           US.BANK_NUM,
           US.BANK_NAME,
           SUBSTR(OP.OID, 3) AS OID,
           '1' AS COMMON
      FROM (SELECT *
              FROM FIRMBANK_ZHIJIANG.T_USUAL_PAYEE
             WHERE ID_USUAL_PAYEE IN
                   (SELECT MAX(ID_USUAL_PAYEE) AS ID_USUAL_PAYEE
                      FROM FIRMBANK_ZHIJIANG.T_USUAL_PAYEE
                     GROUP BY NCID, INTRA_BANK, ACCT_ID)) US,
           FIRMBANK_ZHIJIANG.T_OPERATOR OP
     WHERE US.NCID = OP.NCID
       AND US.NCID IN
           (SELECT NCID FROM FIRMBANK_ZHIJIANG.T_FIRM WHERE FIRM_STATUS != '0'); --过滤掉已注销客户
END;
/
