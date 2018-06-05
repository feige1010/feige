prompt PL/SQL Developer import file
prompt Created on 2017年11月9日 by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_WAGE_FLOW...
alter table CB_WAGE_FLOW disable all triggers;
prompt Loading CB_WAGE_FLOW...
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000216', '10300000', '0000006055', '000048', '古瑜', '8001039970000000027', '11   ', 16986.44, '0', '20170306131558', null, null, null, null, null, '42', null, '宜昌市雅丰医用敷料有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000806', '10300000', '0000006093', '000065', 'YFZ', '8001039970000000052', '11   ', 27994, '0', '20170727120014', null, null, null, null, null, '42', null, '湖北迈斯达尔医疗器械有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000778', '10300000', '0000000413', '000004', '郑圆圆', '8001019970000000028', '42   ', 76498.37, '0', '20170721170323', null, null, null, null, null, '42', null, '枝江汉银村镇银行股份有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000801', '10300000', '0000006093', '000065', 'YFZ', '8001039970000000052', '11   ', 27994, '0', '20170727113042', null, null, null, null, null, '42', null, '湖北迈斯达尔医疗器械有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001025', '10300000', '0000006093', '000065', 'YFZ', '8001039970000000052', '6    ', 88357, '0', '20170920144221', null, null, null, null, null, '42', null, '湖北迈斯达尔医疗器械有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001142', '10300000', '0000006055', '000048', '古瑜', '8001039970000000027', '8    ', 16903.34, '0', '20171013151728', null, null, null, null, null, '42', null, '宜昌市雅丰医用敷料有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000951', '10300000', '0000006093', '000065', 'YFZ', '8001039970000000052', '6    ', 9000, '0', '20170905113136', null, null, null, null, null, '42', null, '湖北迈斯达尔医疗器械有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000857', '10300000', '0000000413', '000004', '郑圆圆', '8001019970000000028', '41   ', 168768.35, '0', '20170810191743', null, null, null, null, null, '42', null, '枝江汉银村镇银行股份有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000963', '10300000', '0000000413', '000004', '郑圆圆', '8001019970000000028', '40   ', 176232.73, '0', '20170908181311', null, null, null, null, null, '42', null, '枝江汉银村镇银行股份有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000000992', '10300000', '0000006055', '000048', '古瑜', '8001039970000000027', '9    ', 23439.78, '0', '20170915153719', null, null, null, null, null, '42', null, '宜昌市雅丰医用敷料有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001020', '10300000', '0000000413', '000004', '郑圆圆', '8001019970000000028', '40   ', 40000, '0', '20170920113120', null, null, null, null, null, '42', null, '枝江汉银村镇银行股份有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001126', '10300000', '0000000413', '000004', '郑圆圆', '8001019970000000028', '40   ', 91007.68, '0', '20171010152219', null, null, null, null, null, '42', null, '枝江汉银村镇银行股份有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001174', '10300000', '0000000413', '000004', '郑圆圆', '8001019970000000028', '41   ', 90714.17, '0', '20171020150956', null, null, null, null, null, '42', null, '枝江汉银村镇银行股份有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001292', '10300000', '0000006360', '000101', '袁方洲', '8001039970000000076', '10   ', 28835, '0', '20171108151020', null, null, null, null, null, '42', null, '宜昌迪安医学检验实验室有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001293', '10300000', '0000006360', '000101', '袁方洲', '8001039970000000076', '10   ', 28835, '0', '20171108151815', null, null, null, null, null, '42', null, '宜昌迪安医学检验实验室有限公司', '1103', null, null, null);
insert into CB_WAGE_FLOW (wfl_batchno, wfl_bsncode, wfl_cstno, wfl_oprno, wfl_oprname, wfl_payacc, wfl_totalnum, wfl_totalamt, wfl_showflag, wfl_submittime, wfl_month, wfl_fileserver, wfl_filepath, wfl_hostcode, wfl_sendtime, wfl_stt, wfl_flag, wfl_payname, wfl_appid, wfl_sendhostno, wfl_hostmsg, wfl_hostflowno)
values ('000000001279', '10300000', '0000006055', '000048', '古瑜', '8001039970000000027', '8    ', 19525.17, '0', '20171107154532', null, null, null, null, null, '42', null, '宜昌市雅丰医用敷料有限公司', '1103', null, null, null);
commit;
prompt 16 records loaded
prompt Enabling triggers for CB_WAGE_FLOW...
alter table CB_WAGE_FLOW enable all triggers;
set feedback on
set define on
prompt Done.
