CREATE TABLE T_BANK
(
  UB_CODE     VARCHAR2(5 CHAR),
  SYMBOL      VARCHAR2(8 CHAR),
  NAME        VARCHAR2(60 CHAR),
  BRANCH      VARCHAR2(12 CHAR),
  AGREE       VARCHAR2(1 CHAR)                  DEFAULT '0',
  THEME       VARCHAR2(20 CHAR),
  DOMAIN      VARCHAR2(100 CHAR),
  BUSINESS    VARCHAR2(10 CHAR),
  SEQ         INTEGER,
  STATUS      VARCHAR2(1 CHAR),
  CRE_DATE    DATE                              DEFAULT to_date('2010-01-01 00:00:00' , 'yyyy-mm-dd hh24:mi:ss'),
  UPD_DATE    DATE                              DEFAULT to_date('2010-01-01 00:00:00' , 'yyyy-mm-dd hh24:mi:ss'),
  DAY_LIMITS  NUMBER(15,2)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


