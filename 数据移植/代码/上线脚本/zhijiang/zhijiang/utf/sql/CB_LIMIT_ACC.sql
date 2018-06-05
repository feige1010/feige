prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_LIMIT_ACC...
alter table CB_LIMIT_ACC disable all triggers;
prompt Loading CB_LIMIT_ACC...
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000004668', '8001014000000001490', 1000000, 2000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000456', '8001014000000000332', 1000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006055', '8001039970000000027', 2000000, 2000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006055', '8001034000000000100', 2000000, 2000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000005813', '8001014000000001543', 200000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000007745', '8001014000000001786', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000398', '8001014000000000253', 5000000, 10000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006281', '8001034000000000148', 500000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000003628', '8001014000000001361', 3000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000007217', '8001019970000000030', 50000, 200000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000007217', '8001014000000001713', 50000, 200000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000191', '8001039970000000040', 0, 0, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000191', '8001034000000000033', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000354', '8001014000000000174', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000001435', '8001014000000000782', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006852', '8001014000000001701', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000002124', '8001014000000001040', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000001656', '8001014000000000861', 4000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000001425', '8001029970000000046', 500000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000001425', '8001024000000000027', 500000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000002711', '8001014000000001312', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000007626', '8001014000000001750', 500000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000008232', '8001014000000001853', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000008294', '8001014000000001889', 5000000, 10000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000001410', '8001014000000000769', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006360', '8001034000000000150', 500000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006360', '8001039970000000076', 200000, 200000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006093', '8001039970000000052', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006093', '8001034000000000112', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000004398', '8001024000000000143', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006451', '8001014000000001610', 1000000, 2000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000007593', '8001014000000001749', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000005729', '8001034000000000082', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000004977', '8001024000000000180', 500000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000008196', '8001014000000001830', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006378', '8001024000000000222', 1000000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000413', '8001019970000000028', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000413', '8001014000000000289', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000004981', '8001029970000000022', 100000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000004981', '8001024000000000192', 100000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006712', '8001034000000000185', 2000000, 4000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000004765', '8001024000000000179', 1000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000006828', '8001014000000001695', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000000874', '8001014000000000575', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000003011', '8001014000000001324', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000005975', '8001029970000000034', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000002463', '8001014000000001210', 500000, 1000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000002249', '8001014000000001105', 1000000, 2000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000002378', '8001014000000001178', 5000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000005975', '8001024000000000209', 2000000, 5000000, 0, '20171109');
insert into CB_LIMIT_ACC (lia_cstno, lia_accno, lia_singlemax, lia_daymax, lia_daysum, lia_lastdate)
values ('0000008503', '8001024000000000260', 5000000, 5000000, 0, '20171109');
commit;
prompt 51 records loaded
prompt Enabling triggers for CB_LIMIT_ACC...
alter table CB_LIMIT_ACC enable all triggers;
set feedback on
set define on
prompt Done.
