drop table TEMP_CERT_ROLE_USER_REF;
create table TEMP_CERT_ROLE_USER_REF
(
  cci_cstno     VARCHAR2(20) not null,
  cci_certid    VARCHAR2(20),
  role_ids      VARCHAR2(4000),
  oids          VARCHAR2(4000),
  cert_num      NUMBER,
  admin_num     NUMBER,
  submitor_num  NUMBER,
  checker_num   NUMBER,
  grantor_num   NUMBER,
  admin_user    VARCHAR2(4000),
  submitor_user VARCHAR2(4000),
  checker_user  VARCHAR2(4000),
  grantor_user  VARCHAR2(4000)
);
