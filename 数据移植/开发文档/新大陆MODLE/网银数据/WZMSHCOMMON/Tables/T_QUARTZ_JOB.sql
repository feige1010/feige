CREATE TABLE T_QUARTZ_JOB
(
  JOB_NAME            VARCHAR2(32 BYTE),
  FINISH_TIME         TIMESTAMP(6),
  FIRE_TIME           TIMESTAMP(6),
  NEXT_FIRE_TIME      TIMESTAMP(6),
  REF_FINISH_TIME     TIMESTAMP(6),
  REF_FIRE_TIME       TIMESTAMP(6),
  REF_NEXT_FIRE_TIME  TIMESTAMP(6),
  VERSION             INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


