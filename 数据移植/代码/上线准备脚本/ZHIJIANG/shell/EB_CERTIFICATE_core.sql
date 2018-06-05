DROP TABLE EB_CERTIFICATE;
create table EB_CERTIFICATE
(
  dn                VARCHAR2(255 CHAR) not null,
  refno             VARCHAR2(80 CHAR),
  authcode          VARCHAR2(80 CHAR),
  base_acct_no      VARCHAR2(50 CHAR) not null,
  doc_type          VARCHAR2(50 CHAR),
  prefix            VARCHAR2(10 CHAR),
  pb_no             VARCHAR2(20 CHAR),
  start_date        VARCHAR2(8 CHAR),
  end_date          VARCHAR2(8 CHAR),
  cert_status       VARCHAR2(2 CHAR),
  zslx              VARCHAR2(10 CHAR),
  organcode         VARCHAR2(20 CHAR),
  domainname        VARCHAR2(80 CHAR),
  extinfo           VARCHAR2(512 CHAR),
  ext_1             VARCHAR2(30 CHAR),
  ext_2             VARCHAR2(30 CHAR),
  card_no           VARCHAR2(50 CHAR),
  next_certfee_date VARCHAR2(10 CHAR)
);