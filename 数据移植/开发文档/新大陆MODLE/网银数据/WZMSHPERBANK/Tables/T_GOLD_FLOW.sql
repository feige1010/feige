CREATE TABLE T_GOLD_FLOW
(
  ID_FLOW       NUMBER,
  FLOW_TYPE     VARCHAR2(1 CHAR),
  CODE          VARCHAR2(8 CHAR),
  DIRECTION     VARCHAR2(1 CHAR),
  FLAT          VARCHAR2(1 CHAR),
  ENTRUST_TYPE  VARCHAR2(1 CHAR),
  AMOUNT        NUMBER(6),
  FALL_DATE     DATE,
  PICK_DATE     DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON COLUMN T_GOLD_FLOW.FLOW_TYPE IS '流水类型暂时分为3类
0——委托流水，1——提货流水，2——资金流水';

COMMENT ON COLUMN T_GOLD_FLOW.CODE IS '委托流水——合约代码
提货流水——品种代码
资金流水——货币代码';

COMMENT ON COLUMN T_GOLD_FLOW.DIRECTION IS '委托流水为买卖方向
资金流水为资金方向';

COMMENT ON COLUMN T_GOLD_FLOW.ENTRUST_TYPE IS '该项委托流水时必填';

COMMENT ON COLUMN T_GOLD_FLOW.AMOUNT IS '委托流水——委托手数
提货流水——提货数量';


