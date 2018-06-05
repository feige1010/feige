DROP TABLE FM_INT_RATE;
create table FM_INT_RATE
(
  int_type          VARCHAR2(3 CHAR) not null,
  ccy               VARCHAR2(3 CHAR) not null,
  effect_date       DATE not null,
  balance           NUMBER(18) not null,
  day_basis         NUMBER(3) not null,
  int_basis         VARCHAR2(2 CHAR),
  spread_rate       NUMBER(13,8),
  actual_rate       NUMBER(13,8) not null,
  min_rate          NUMBER(13,8),
  max_rate          NUMBER(13,8),
  base_rate         NUMBER(13,8),
  last_chg_run_date DATE,
  status            VARCHAR2(1 CHAR),
  maker             VARCHAR2(30 CHAR) not null,
  checker           VARCHAR2(30 CHAR),
  make_date         DATE not null,
  check_date        DATE,
  pboc              VARCHAR2(1 CHAR),
  spread_percent    NUMBER(5,2)
);