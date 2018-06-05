CREATE TABLE T_FIRM
(
  ID_FIRM         NUMBER(6),
  UB_CODE         VARCHAR2(5 CHAR),
  NCID            VARCHAR2(15 CHAR),
  CID             VARCHAR2(15 CHAR),
  BRANCH_ID       VARCHAR2(5 CHAR),
  INDUSTRY_FIELD  VARCHAR2(4 CHAR)              DEFAULT '0000',
  POST_CODE       VARCHAR2(6 CHAR),
  FIRM_STATUS     VARCHAR2(1 CHAR),
  BANK_TRACE_ID   VARCHAR2(12 CHAR),
  UPDATE_TIME     DATE,
  CREATE_TIME     DATE,
  FIRM_TYPE       VARCHAR2(5 CHAR)              DEFAULT '0',
  MOBILE          VARCHAR2(11 CHAR),
  CONTACT         VARCHAR2(20 CHAR),
  PHONE           VARCHAR2(20 CHAR),
  FAX             VARCHAR2(20 CHAR),
  EMAIL           VARCHAR2(50 CHAR),
  CNAME           VARCHAR2(100 CHAR),
  ENAME           VARCHAR2(100 CHAR),
  CN_ADDRESS      VARCHAR2(100 CHAR),
  EN_ADDRESS      VARCHAR2(120 CHAR),
  PAY_DATE        DATE,
  IS_VIP          VARCHAR2(1 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


