prompt PL/SQL Developer import file
prompt Created on 2017年11月9日 by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_AUTH_DEF...
alter table CB_AUTH_DEF disable all triggers;
prompt Loading CB_AUTH_DEF...
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000000191', '转账两步模式', '0000000191', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000000398', '转账两步模式', '0000000398', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000007745', '转账两步模式', '0000007745', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000002378', '转账两步模式', '0000002378', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000004398', '转账两步模式', '0000004398', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006451', '转账两步模式', '0000006451', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000001425', '转账两步模式', '0000001425', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000005975', '转账两步模式', '0000005975', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000005813', '转账两步模式', '0000005813', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000008294', '转账两步模式', '0000008294', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006828', '转账两步模式', '0000006828', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000003628', '转账一步模式', '0000003628', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006055', '转账两步模式', '0000006055', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000008503', '转账两步模式', '0000008503', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000000413', '转账两步模式', '0000000413', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006093', '转账两步模式', '0000006093', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000004981', '转账两步模式', '0000004981', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000004977', '转账两步模式', '0000004977', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000005729', '转账两步模式', '0000005729', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000001656', '转账两步模式', '0000001656', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100000191', '理财两步模式', '0000000191', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100007745', '理财两步模式', '0000007745', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100002378', '理财两步模式', '0000002378', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100000354', '理财两步模式', '0000000354', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100005729', '理财两步模式', '0000005729', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100007626', '理财两步模式', '0000007626', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100005813', '理财两步模式', '0000005813', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100006828', '理财两步模式', '0000006828', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100006055', '理财两步模式', '0000006055', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100001435', '理财两步模式', '0000001435', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100000413', '理财两步模式', '0000000413', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100004981', '理财两步模式', '0000004981', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100006093', '理财两步模式', '0000006093', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100000874', '理财两步模式', '0000000874', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110004668', '余额对账一步模式', '0000004668', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006055', '余额对账一步模式', '0000006055', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110000354', '余额对账一步模式', '0000000354', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110005813', '余额对账一步模式', '0000005813', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110008232', '余额对账一步模式', '0000008232', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006281', '余额对账一步模式', '0000006281', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110003628', '余额对账一步模式', '0000003628', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110007217', '余额对账一步模式', '0000007217', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110000191', '余额对账一步模式', '0000000191', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110001435', '余额对账一步模式', '0000001435', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006852', '余额对账一步模式', '0000006852', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110002124', '余额对账一步模式', '0000002124', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110001656', '余额对账一步模式', '0000001656', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110000398', '余额对账一步模式', '0000000398', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110002711', '余额对账一步模式', '0000002711', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110004977', '余额对账一步模式', '0000004977', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110007626', '余额对账一步模式', '0000007626', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110008294', '余额对账一步模式', '0000008294', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110001410', '余额对账一步模式', '0000001410', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006093', '余额对账一步模式', '0000006093', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110001425', '余额对账一步模式', '0000001425', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110000456', '余额对账一步模式', '0000000456', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110004398', '余额对账一步模式', '0000004398', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006451', '余额对账一步模式', '0000006451', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006360', '余额对账一步模式', '0000006360', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110007593', '余额对账一步模式', '0000007593', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110005729', '余额对账一步模式', '0000005729', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110008196', '余额对账一步模式', '0000008196', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006378', '余额对账一步模式', '0000006378', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110000413', '余额对账一步模式', '0000000413', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110004981', '余额对账一步模式', '0000004981', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006712', '余额对账一步模式', '0000006712', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110004765', '余额对账一步模式', '0000004765', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110006828', '余额对账一步模式', '0000006828', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110000874', '余额对账一步模式', '0000000874', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110003011', '余额对账一步模式', '0000003011', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110005975', '余额对账一步模式', '0000005975', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110007745', '余额对账一步模式', '0000007745', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110002463', '余额对账一步模式', '0000002463', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110002249', '余额对账一步模式', '0000002249', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110002378', '余额对账一步模式', '0000002378', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0110008503', '余额对账一步模式', '0000008503', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000000354', '转账两步模式', '0000000354', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000000456', '转账两步模式', '0000000456', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000000874', '转账两步模式', '0000000874', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000001435', '转账两步模式', '0000001435', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000002249', '转账两步模式', '0000002249', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000002711', '转账两步模式', '0000002711', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000003011', '转账两步模式', '0000003011', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000004765', '转账两步模式', '0000004765', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006360', '转账两步模式', '0000006360', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006378', '转账两步模式', '0000006378', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000006712', '转账两步模式', '0000006712', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000007217', '转账两步模式', '0000007217', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000007626', '转账两步模式', '0000007626', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0000008196', '转账两步模式', '0000008196', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100000398', '理财两步模式', '0000000398', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100000456', '理财两步模式', '0000000456', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100001425', '理财两步模式', '0000001425', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100001656', '理财两步模式', '0000001656', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100002249', '理财两步模式', '0000002249', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100002711', '理财两步模式', '0000002711', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100003011', '理财两步模式', '0000003011', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100004398', '理财两步模式', '0000004398', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100004765', '理财两步模式', '0000004765', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100004977', '理财两步模式', '0000004977', '0', '0', '0', '0', null);
commit;
prompt 100 records committed...
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100005975', '理财两步模式', '0000005975', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100006360', '理财两步模式', '0000006360', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100006378', '理财两步模式', '0000006378', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100006712', '理财两步模式', '0000006712', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100007217', '理财两步模式', '0000007217', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100008196', '理财两步模式', '0000008196', '0', '0', '0', '0', null);
insert into CB_AUTH_DEF (adf_id, adf_alias, adf_cstno, adf_areatype, adf_authtype, adf_checktype, adf_sendtype, adf_stt)
values ('0100008294', '理财两步模式', '0000008294', '0', '0', '0', '0', null);
commit;
prompt 107 records loaded
prompt Enabling triggers for CB_AUTH_DEF...
alter table CB_AUTH_DEF enable all triggers;
set feedback on
set define on
prompt Done.
