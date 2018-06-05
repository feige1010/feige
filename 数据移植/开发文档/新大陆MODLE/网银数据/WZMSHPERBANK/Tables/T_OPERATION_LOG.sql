CREATE TABLE T_OPERATION_LOG
(
  ID_ACT_LOG  NUMBER(6),
  UB_CODE     CHAR(5 CHAR),
  CID         VARCHAR2(15 CHAR),
  NAME        VARCHAR2(50 CHAR),
  ACT_TIME    DATE,
  CLIENT_IP   VARCHAR2(20 CHAR),
  ACT_TYPE    VARCHAR2(50 CHAR),
  CONTENT     VARCHAR2(500 CHAR),
  EGENT       VARCHAR2(255 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


