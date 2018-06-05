drop table FM_CLIENT_CONTACT_TBL;
create table FM_CLIENT_CONTACT_TBL
(
  client_no    VARCHAR2(12 CHAR) not null,
  contact_type VARCHAR2(3 CHAR) not null,
  route        VARCHAR2(8 CHAR) not null,
  address      VARCHAR2(140 CHAR) not null,
  contact_id   VARCHAR2(50 CHAR),
  salutation   VARCHAR2(20 CHAR),
  postal_code  VARCHAR2(10 CHAR),
  pref_flag    VARCHAR2(1 CHAR),
  country_tel  VARCHAR2(4 CHAR),
  city_tel     VARCHAR2(6 CHAR),
  update_date  DATE,
  update_user  VARCHAR2(30 CHAR),
  addr_mode    VARCHAR2(1 CHAR),
  country      VARCHAR2(3 CHAR),
  state        VARCHAR2(2 CHAR),
  city         VARCHAR2(6 CHAR),
  address1     VARCHAR2(140 CHAR)
);