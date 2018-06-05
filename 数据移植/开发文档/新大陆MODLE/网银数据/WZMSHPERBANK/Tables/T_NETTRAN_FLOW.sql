CREATE TABLE T_NETTRAN_FLOW
(
  ID_FLOW      NUMBER,
  TRANFLOW_NO  VARCHAR2(50 CHAR),
  CID          VARCHAR2(15 CHAR),
  TYPE         VARCHAR2(1 CHAR),
  ACCT_NO      VARCHAR2(32 CHAR),
  TRAN_TIME    DATE,
  CCY          VARCHAR2(2 CHAR),
  MONEY        NUMBER(15,2),
  UB_CODE      VARCHAR2(5 CHAR),
  INNER_MONEY  NUMBER(17,2)                     DEFAULT 0.00,
  CROSS_MONEY  NUMBER(17,2)                     DEFAULT 0.00,
  YYPTLSH      VARCHAR2(20 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON TABLE T_NETTRAN_FLOW IS '记录托管网银的流水';


