DROP TABLE RB_INT_MATRIX;
create table RB_INT_MATRIX
(
  int_type    VARCHAR2(3 CHAR),
  ccy         VARCHAR2(3 CHAR),
  effect_date DATE,
  balance     NUMBER,
  term_type   VARCHAR2(1 CHAR),
  term_period NUMBER(3),
  day_basis   NUMBER(3),
  int_rate    NUMBER(13,8),
  pboc        VARCHAR2(1 CHAR) not null,
  status      VARCHAR2(1 CHAR) not null,
  max_rate    NUMBER(13,8),
  min_rate    NUMBER(13,8),
  maker       VARCHAR2(30 CHAR) not null,
  make_date   DATE not null,
  checker     VARCHAR2(30 CHAR),
  check_date  DATE
);
