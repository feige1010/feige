CREATE TABLE T_ACTION
(
  ACTION_UUID          CHAR(32 BYTE),
  APP_ADDR             VARCHAR2(30 BYTE),
  APP_CODE             VARCHAR2(20 BYTE),
  APP_CONTEXT_ROOT     VARCHAR2(20 BYTE),
  APP_PORT             INTEGER,
  APP_TICKET           CHAR(32 BYTE),
  CUST_ID              VARCHAR2(50 BYTE),
  CUST_ID_TYPE         VARCHAR2(20 BYTE),
  GEN_TIME             TIMESTAMP(6),
  JUMP_TICKET          CHAR(32 BYTE),
  LOGIN_TICKET         CHAR(32 BYTE),
  REF_GEN_TIME         TIMESTAMP(6),
  REF_TXN_TIME         TIMESTAMP(6),
  REF_UPD_TIME         TIMESTAMP(6),
  RESP_APP_TICKET      CHAR(32 BYTE),
  RESP_CUST_ID         VARCHAR2(50 BYTE),
  RESP_CUST_ID_TYPE    VARCHAR2(20 BYTE),
  RESP_JUMP_TICKET     CHAR(32 BYTE),
  TARGET_APP_CODE      VARCHAR2(20 BYTE),
  TARGET_CUST_ID       VARCHAR2(50 BYTE),
  TARGET_CUST_ID_TYPE  VARCHAR2(20 BYTE),
  TXN_CODE             VARCHAR2(20 BYTE),
  TXN_TICKET           CHAR(32 BYTE),
  TXN_TIME             TIMESTAMP(6),
  UPD_TIME             TIMESTAMP(6),
  VERSION              INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


