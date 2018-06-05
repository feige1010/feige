prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_CST_NODE...
alter table CB_CST_NODE disable all triggers;
prompt Loading CB_CST_NODE...
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000000191', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000000354', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000000398', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000000413', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000000456', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000000874', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000001410', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000001425', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000001435', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000001656', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000002124', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000002249', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000002378', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000002463', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000002711', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000003011', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000003628', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000004398', '800102');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000004668', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000004765', '800102');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000004977', '800102');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000004981', '800102');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000005729', '800103');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000005813', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000005975', '800102');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006055', '800103');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006093', '800103');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006281', '800103');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006360', '800103');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006378', '800102');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006451', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006712', '800103');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006828', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000006852', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000007217', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000007593', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000007626', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000007745', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000008196', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000008232', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000008294', '800101');
insert into CB_CST_NODE (cnd_cstno, cnd_opennode)
values ('0000008503', '800102');
commit;
prompt 42 records loaded
prompt Enabling triggers for CB_CST_NODE...
alter table CB_CST_NODE enable all triggers;
set feedback on
set define on
prompt Done.
