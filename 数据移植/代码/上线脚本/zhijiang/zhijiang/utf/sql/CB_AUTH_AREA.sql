prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_AUTH_AREA...
alter table CB_AUTH_AREA disable all triggers;
prompt Loading CB_AUTH_AREA...
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000000191', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000000398', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000007745', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000002378', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000004398', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006451', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000001425', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000005975', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000005813', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000008294', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006828', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000003628', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006055', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000008503', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000000413', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006093', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000004981', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000004977', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000005729', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000001656', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100000191', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100007745', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100002378', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100000354', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100005729', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100007626', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100005813', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100006828', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100006055', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100001435', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100000413', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100004981', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100006093', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100000874', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110004668', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006055', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110000354', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110005813', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110008232', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006281', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110003628', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110007217', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110000191', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110001435', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006852', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110002124', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110001656', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110000398', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110002711', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110004977', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110007626', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110008294', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110001410', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006093', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110001425', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110000456', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110004398', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006451', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006360', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110007593', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110005729', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110008196', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006378', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110000413', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110004981', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006712', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110004765', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110006828', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110000874', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110003011', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110005975', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110007745', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110002463', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110002249', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110002378', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0110008503', '1', 0, 1000000000000000, '00000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000000354', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000000456', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000000874', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000001435', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000002249', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000002711', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000003011', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000004765', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006360', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006378', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000006712', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000007217', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000007626', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0000008196', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100000398', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100000456', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100001425', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100001656', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100002249', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100002711', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100003011', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100004398', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100004765', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100004977', '1', 0, 1000000000000000, '10000');
commit;
prompt 100 records committed...
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100005975', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100006360', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100006378', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100006712', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100007217', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100008196', '1', 0, 1000000000000000, '10000');
insert into CB_AUTH_AREA (aar_id, aar_no, aar_start, aar_end, aar_authdef)
values ('0100008294', '1', 0, 1000000000000000, '10000');
commit;
prompt 107 records loaded
prompt Enabling triggers for CB_AUTH_AREA...
alter table CB_AUTH_AREA enable all triggers;
set feedback on
set define on
prompt Done.
