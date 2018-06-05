DROP TABLE FM_CLIENT_DOCUMENT;
create table FM_CLIENT_DOCUMENT
(
  client_no       VARCHAR2(12 CHAR) not null,
  document_type   VARCHAR2(3 CHAR) not null,
  document_id     VARCHAR2(25 CHAR) not null,
  iss_date        DATE,
  expiry_date     DATE,
  iss_place       VARCHAR2(30 CHAR),
  iss_authority   VARCHAR2(30 CHAR),
  pref_flag       VARCHAR2(1 CHAR),
  update_date     DATE,
  update_user     VARCHAR2(30 CHAR),
  iss_country     VARCHAR2(3 CHAR) not null,
  dist_code       VARCHAR2(6 CHAR) default '5030',
  iss_state       VARCHAR2(2 CHAR),
  iss_city        VARCHAR2(6 CHAR),
  new_document_id VARCHAR2(25 CHAR)
);