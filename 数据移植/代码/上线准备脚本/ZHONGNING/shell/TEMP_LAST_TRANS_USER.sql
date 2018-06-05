-- 数据移植使用，存储选定经办角色操作员用户信息，供修改历史交易记录录入人信息
drop table TEMP_LAST_TRANS_USER;
create table TEMP_LAST_TRANS_USER
(
  cstno          VARCHAR2(20) not null,
  userno         VARCHAR2(32) not null,
  username       VARCHAR2(60)
);

