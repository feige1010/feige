CREATE TABLE T_BANK_MSG_CFG
(
  UB_CODE   VARCHAR2(5 CHAR),
  HH        VARCHAR2(10 CHAR),
  ID        VARCHAR2(10 CHAR),
  PASSWORD  VARCHAR2(12 CHAR),
  PORTNAME  VARCHAR2(10 CHAR),
  PORTID    VARCHAR2(5 CHAR),
  CRE_DATE  DATE                                DEFAULT to_date('2013-08-14 00:00:00' , 'yyyy-mm-dd hh24:mi:ss'),
  UPD_DATE  DATE                                DEFAULT to_date('2013-08-14 00:00:00' , 'yyyy-mm-dd hh24:mi:ss')
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


