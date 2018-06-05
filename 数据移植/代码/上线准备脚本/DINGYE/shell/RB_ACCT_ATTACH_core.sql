DROP TABLE RB_ACCT_ATTACH;
CREATE TABLE RB_ACCT_ATTACH (INTERNAL_KEY NUMBER(12) NOT NULL, 
ACCT_NO VARCHAR2(50 CHAR), 
AGREEMENT_FLAG VARCHAR2(1 CHAR) NOT NULL, 
INIT_DEP VARCHAR2(1 CHAR) NOT NULL, 
PREFIX VARCHAR2(10 CHAR), 
DOC_TYPE VARCHAR2(3 CHAR), 
PB_NO NUMBER, 
OSA_FLAG VARCHAR2(1 CHAR) NOT NULL, 
REGION VARCHAR2(1 CHAR), 
WITHDRAWAL_TYPE VARCHAR2(1 CHAR) NOT NULL, 
ACCT_NATURE VARCHAR2(4 CHAR), 
PB_FLAG VARCHAR2(1 CHAR) NOT NULL, 
CERTIFICATE_NO_ACT VARCHAR2(20 CHAR), 
FIXED_CALL VARCHAR2(1 CHAR), 
STATUS_CHG_DATE DATE, 
CONTACT_TYPE VARCHAR2(3 CHAR), 
ADVICE_HANDLING VARCHAR2(2 CHAR), 
ADVICE_LANG VARCHAR2(2 CHAR), 
CR_DR_BASE_ACCT_NO VARCHAR2(50 CHAR), 
CR_DR_ACCT_NO VARCHAR2(50 CHAR), 
APPR_LETTER_NO VARCHAR2(30 CHAR), 
AUTO_CLOSE_IND VARCHAR2(1 CHAR), 
AUTO_CLOSE_EXEC_FLAG VARCHAR2(1 CHAR) DEFAULT 'N', 
FIXED_AMT NUMBER, 
TRAN_FACT_DATE DATE, 
EVINCIVE_FLAG VARCHAR2(1 CHAR), 
CR_DR_CARD_PB_IND VARCHAR2(1 CHAR), 
LAST_CHANGE_DATE DATE, 
CR_DR_CARD_NO VARCHAR2(50 CHAR), 
ALL_DEP_IND VARCHAR2(1 CHAR) DEFAULT 'Y', 
ALL_DRA_IND VARCHAR2(1 CHAR) DEFAULT 'N'
);
