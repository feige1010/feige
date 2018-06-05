CREATE TABLE T_INNER_CROSS_LIMIT_MONEY
(
  UB_CODE                 VARCHAR2(5 CHAR),
  INNER_DEAL_LIMITED_AMT  NUMBER(17,2)          DEFAULT 0.00,
  CROSS_DEAL_LIMITED_AMT  NUMBER(17,2)          DEFAULT 0.00,
  INNER_DAY_LIMITED_AMT   NUMBER(17,2)          DEFAULT 0.00,
  CROSS_DAY_LIMITED_AMT   NUMBER(17,2)          DEFAULT 0.00,
  CRE_DATE                DATE                  DEFAULT to_date('2010-01-01 00:00:00' , 'yyyy-mm-dd hh24:mi:ss'),
  UPD_DATE                DATE                  DEFAULT to_date('2010-01-01 00:00:00' , 'yyyy-mm-dd hh24:mi:ss')
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


