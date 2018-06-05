prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_AUTH_HISTORY...
alter table CB_AUTH_HISTORY disable all triggers;
prompt Loading CB_AUTH_HISTORY...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000458', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170508100715', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000462', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170508143918', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000463', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170508145555', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000465', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170509144818', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000466', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170509144738', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000468', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170510152130', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000467', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170509151801', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000469', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170510111605', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000470', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170510111513', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000471', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170510111301', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000472', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170510152100', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000473', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170515085514', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000474', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170515085346', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000475', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170515085255', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000478', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170515135531', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000481', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170515153016', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000483', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170516101721', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000476', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170515085046', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000477', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170515090231', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000487', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170519092627', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000489', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170519100834', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000491', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170519145744', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000497', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170522091504', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000504', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170521120204', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000506', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170521120123', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000508', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170520120727', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000488', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170519100756', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000490', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170519100553', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000503', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170519185529', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000505', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170520120648', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000507', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170519185446', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000510', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170522091332', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000512', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170522091532', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000513', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170522160516', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000514', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170523152311', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000515', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170523152236', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000518', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170523114458', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000519', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170524094843', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000520', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170524094733', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000524', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170524162037', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000523', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170524162007', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000525', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170526112501', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000526', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170526111525', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000527', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170526112533', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000529', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170526160501', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000528', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170526155341', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000533', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170527160719', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000530', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170527091925', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000531', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170527092001', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000532', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170527160619', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000534', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170531105106', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000535', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170531105408', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000537', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170531110353', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000540', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601154156', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000551', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601154126', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000552', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601154053', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000554', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601154020', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000556', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153947', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000541', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153910', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000542', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153844', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000543', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153804', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000544', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153727', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000545', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153642', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000546', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153558', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000547', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153514', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000548', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153427', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000549', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153349', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000550', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153318', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000553', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153224', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000555', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153130', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000557', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170601153044', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000558', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170602114740', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000559', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170602164004', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000560', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170602164844', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000561', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170602164809', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000562', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170602164759', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000565', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170605105404', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000568', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170605145802', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000566', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170605105304', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000569', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170605150207', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000570', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170606102609', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000572', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170606143346', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000573', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170606144435', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000574', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170606144404', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000575', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170606160321', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000577', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170606174503', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000571', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170606143216', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000578', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170607122733', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000579', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170607122553', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000580', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170607154553', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000581', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170608102942', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000582', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170608104436', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000583', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170608115556', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000584', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170609151227', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000585', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170610110316', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000586', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170609171133', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000587', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170609171218', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000589', '10200300', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170612143918', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000593', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170613111330', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000594', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170613114055', null);
commit;
prompt 100 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000595', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170613114032', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000596', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170614104659', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000597', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170615162133', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000599', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170615162052', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000600', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170615162016', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000601', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170615161918', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000598', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170615161839', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000602', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170615101933', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000604', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170615102017', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000605', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170615113854', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000606', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170616085751', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000607', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170616103336', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000621', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170619123813', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000623', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170619151756', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000624', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170619155902', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000640', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620152005', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000650', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170622091752', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000652', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170623102433', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000654', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170623114429', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000619', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170619085520', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000620', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170619155811', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000622', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170619123637', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000625', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620084552', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000626', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620084403', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000627', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620084201', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000628', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620083926', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000629', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620083651', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000630', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170620085348', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000631', '10200300', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170620102044', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000633', '10200001', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170620103709', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000636', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170620142224', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000637', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170620142141', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000638', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170620142056', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000639', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170620150512', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000653', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170623114203', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000660', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170627105553', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000661', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170627115203', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000662', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170627145126', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000668', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170628102548', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000670', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170628102745', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000675', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170628165945', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000677', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170629134130', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000680', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170630095606', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000688', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170703102832', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000689', '10200300', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170703140928', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000691', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170703152448', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000693', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170703161450', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000663', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170627153228', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000666', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170627180627', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000667', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170628102432', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000669', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170628102358', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000671', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170628103006', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000672', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170628151445', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000673', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170628151249', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000674', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170628164642', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000676', '10200001', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170629091836', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000681', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170630162348', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000699', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170704150930', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000703', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170704164044', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000695', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170704101935', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000696', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170704153121', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000697', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170704153016', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000698', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170704152938', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000700', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170704145646', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000702', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170704145843', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000704', '10200000', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20170704172059', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000705', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170705110011', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000711', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170707100159', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000712', '10200300', '0000007745', '000124', 'Ò×¹ú', '10', '1', '0', '20170707091727', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000713', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170707115417', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000717', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708152443', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000719', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708155945', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000724', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162548', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000708', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170705182345', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000720', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708160638', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000725', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162518', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000726', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162435', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000727', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162350', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000728', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162321', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000729', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162245', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000730', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162221', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000731', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170708162125', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000732', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170710102304', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000733', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170710112937', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000734', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170710161406', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000742', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170711111020', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000743', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170711114655', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000746', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170712092804', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000747', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170712161059', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000748', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20170713104928', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000750', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170714091613', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000741', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170711115513', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000744', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170711115444', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000756', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170717155711', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000764', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170718164152', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000772', '10200000', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20170720175852', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000775', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170721101630', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000777', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170721170704', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000000', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161206163730', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000001', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161206165456', null);
commit;
prompt 200 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000002', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161206165342', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000004', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161207163616', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000005', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161207163322', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000006', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161207163110', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000007', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161208091352', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000009', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161208165403', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000008', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161208164836', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000010', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161208165156', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000011', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161209092030', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000789', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170725092121', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000872', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170818150840', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001040', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920160919', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001135', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012104424', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001205', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171027145851', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000016', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161213152448', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000018', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161213152305', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000020', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161213152824', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000021', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161213152056', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000017', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161213151855', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000019', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161213151646', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000022', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161219145643', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000023', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221113626', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000027', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221113349', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000028', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221113237', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000030', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221113114', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000024', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221113001', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000026', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221112708', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000029', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161221112537', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000033', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161222164244', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000034', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161222164014', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000035', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161222163843', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000038', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223144701', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000039', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223144604', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000040', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223144456', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000041', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223144121', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000042', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143900', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000043', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143725', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000044', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143612', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000045', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143459', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000046', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143358', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000047', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143258', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000048', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223143131', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000049', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223142846', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000051', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223142734', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000050', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161223142620', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000054', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161227161419', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000056', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161227161233', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000055', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161227161116', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000057', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161227160908', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000059', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161229085417', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000060', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161229085514', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000061', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161229162109', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000063', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161229162006', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000064', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161230110414', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000062', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20161229161749', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000067', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170103161955', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000068', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170105155812', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000070', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170110144928', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000073', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170113134621', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000074', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170118105054', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000075', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170120163522', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000078', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170122163304', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000079', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170122162956', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000081', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170122171656', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000084', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170122203043', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000086', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170124130438', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000087', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170124170051', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000089', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125101145', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000092', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125141237', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000094', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135342', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000095', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125141209', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000096', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125141125', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000097', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125141045', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000098', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125141011', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000099', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140946', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000102', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140911', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000103', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140811', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000104', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140700', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000105', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140608', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000106', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140411', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000107', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140339', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000108', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140307', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000090', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140240', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000091', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140208', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000093', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140137', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000100', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125140043', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000101', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135949', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000109', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135909', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000110', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135824', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000111', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135651', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000112', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135528', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000113', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170125135450', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000114', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170208165102', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000116', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170209111514', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000117', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170209111416', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000121', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170209154419', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000123', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170209155902', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000118', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170209154158', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000120', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170209154331', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000122', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170209155131', null);
commit;
prompt 300 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000124', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170212151412', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000128', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170213143623', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000164', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170214143343', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000166', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170214171332', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000167', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170215085913', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000169', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170215162805', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000125', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170212151340', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000126', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170212151311', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000127', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170213084845', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000133', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214151039', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000136', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150909', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000138', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150803', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000139', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150659', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000140', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150614', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000141', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150516', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000142', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150433', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000143', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150355', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000144', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150205', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000146', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214150101', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000148', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145956', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000149', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145819', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000151', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145718', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000153', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145608', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000154', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145509', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000155', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170214111105', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000156', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145411', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000157', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145256', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000158', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214145140', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000161', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214143202', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000163', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170214143117', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000170', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170216152931', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000171', '10200000', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170216162059', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000172', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170217110324', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000173', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170218125611', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000192', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170222161633', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000193', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170223152010', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000195', '10200001', '0000006093', '000067', 'FZ', '10', '1', '0', '20170223165104', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000198', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170224125821', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000200', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170224153016', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000201', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170224152659', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000202', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170224152616', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000203', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170224152517', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000204', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170224152204', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000205', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170224162313', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000207', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170227164511', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000209', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170228153921', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000211', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170301095001', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000213', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170303154302', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000215', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170306130916', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000217', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170307104206', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000220', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170307145631', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000218', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170307104135', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000219', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170307145226', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000221', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170308143524', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000224', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170309160502', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000226', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170310103254', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000230', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170310162058', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000222', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170310092243', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000223', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170309151625', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000227', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170310133347', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000229', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170310162235', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000231', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170310163652', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000233', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170313161617', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000237', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170314113226', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000238', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170314144616', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000243', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170315105421', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000236', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170314113033', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000239', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170314144716', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000241', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170315104117', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000244', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170315120036', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000245', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170315145828', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000246', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170316095039', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000248', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170317143731', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000250', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170317162849', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000249', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20170317150041', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000251', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170320103048', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000253', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170321153826', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000254', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170320152757', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000255', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170320161336', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000256', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170320164202', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000258', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321143058', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000260', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142951', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000262', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321143133', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000267', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170321154013', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000257', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142536', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000259', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321143024', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000261', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142917', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000263', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142835', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000264', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142758', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000265', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142719', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000266', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170321142618', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000273', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170322143158', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000274', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170322143313', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000282', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170324151210', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000278', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170323121017', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000279', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170323133445', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000281', '10200000', '0000007217', '000095', '²Ìæ«Áá', '10', '1', '0', '20170324104742', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000297', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170328091412', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000287', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170328112347', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000301', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170328112239', null);
commit;
prompt 400 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000302', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170328160938', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000308', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170329160630', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000310', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170329145715', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000313', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170330091035', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000314', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170330091005', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000315', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170330090932', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000317', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170331105039', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000318', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170401093049', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000319', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170401093019', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000320', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170401092952', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000321', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170401094503', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000325', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145451', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000327', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145934', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000339', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170405145503', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000342', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170405160102', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000344', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170405170150', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000345', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170405170125', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000346', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170406145539', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000347', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170406145502', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000349', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170407093418', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000351', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170407145829', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000323', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170401141231', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000324', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145359', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000326', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145857', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000328', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145818', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000329', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145701', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000330', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170401145622', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000350', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170407101812', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000353', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170410093155', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000355', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170410161919', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000356', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170410161744', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000357', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170410161837', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000359', '10200300', '0000007217', '000095', '²Ìæ«Áá', '10', '1', '0', '20170410155359', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000366', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170411155547', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000367', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170412122547', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000371', '10200300', '0000002711', '000097', '¶­´Ï', '10', '1', '0', '20170413103051', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000368', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170412165216', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000372', '10200300', '0000002711', '000097', '¶­´Ï', '10', '1', '0', '20170413103611', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000373', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170413110749', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000377', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170413150825', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000378', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170413164242', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000379', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170414095931', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000382', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170417111325', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000391', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145028', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000392', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145258', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000394', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145401', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000396', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418105541', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000383', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145159', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000384', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145128', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000385', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145101', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000386', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144946', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000387', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144912', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000388', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144837', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000389', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144754', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000390', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144653', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000393', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418145330', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000395', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144529', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000399', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418144449', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000400', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418115025', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000401', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170418151128', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000403', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170419105349', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000408', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170419160503', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000406', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170419145523', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000410', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170421093141', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000411', '10200300', '0000004977', '000040', '¶ÅÄÝÄÈ', '10', '1', '0', '20170421142153', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000414', '10200300', '0000004977', '000040', '¶ÅÄÝÄÈ', '10', '1', '0', '20170421143112', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000415', '10200300', '0000004977', '000040', '¶ÅÄÝÄÈ', '10', '1', '0', '20170421145446', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000422', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170424142137', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000423', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170424144757', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000420', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170424083000', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000424', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170425123632', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000425', '10200001', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425110253', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000428', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112512', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000429', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112700', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000430', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425111947', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000431', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112904', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000433', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112437', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000434', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112411', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000435', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112342', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000436', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112308', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000437', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112224', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000438', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425112115', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000439', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425113329', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000440', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170425125235', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000441', '10200300', '0000002711', '000097', '¶­´Ï', '10', '1', '0', '20170425181415', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000443', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170427095718', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000445', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170427144654', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000446', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170427164905', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000444', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170427144606', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000447', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170428155854', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000450', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170502162927', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000451', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170504101932', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000452', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170504102012', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000453', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170504142908', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000457', '10200300', '0000005813', '000120', 'ÐíÖÒ¹ó', '10', '1', '0', '20170508100044', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000464', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170508164511', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000896', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170825145930', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000897', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170825145847', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000900', '10200000', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170828094841', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000908', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170829103431', null);
commit;
prompt 500 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000920', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170831083212', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000923', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170831101721', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000929', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170901145938', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000930', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170901150018', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000933', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170901155437', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000935', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170901155503', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000940', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170901160832', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000943', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170904150652', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000944', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170904151257', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000945', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170904163355', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000952', '10200001', '0000006093', '000067', 'FZ', '10', '1', '0', '20170905144242', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000953', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170905143744', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000932', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170901155409', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000934', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170901155333', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000937', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170901160549', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000938', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170901160508', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000939', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170901160707', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000958', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170906161130', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000960', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170907165624', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000961', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170908160743', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000966', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170911113959', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000968', '10200300', '0000007217', '000095', '²Ìæ«Áá', '10', '1', '0', '20170912111515', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000971', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170912162540', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000972', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170912160344', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000973', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170912162205', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000986', '10200300', '0000007217', '000095', '²Ìæ«Áá', '10', '1', '0', '20170915113744', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000988', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170915112020', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000989', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170915111940', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000991', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170915153637', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000993', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170915160519', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000994', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170915160455', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001004', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170918174309', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001007', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170918175635', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001010', '10200000', '0000000398', '000162', 'ÁºÂ××£', '10', '1', '0', '20170919093845', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000959', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170907111543', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000962', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170908181612', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000965', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170911112202', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000967', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170911151904', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000969', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170912114155', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000970', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170912162505', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000974', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170913085340', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000975', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170913085300', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000977', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170913150620', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000978', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170914084120', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000979', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170914104923', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000980', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170914104604', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000981', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170914104447', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000985', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170914151707', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000987', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170915090845', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000990', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170915153556', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000996', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170918120146', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000997', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170918155526', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000998', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170918160007', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000999', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170918160814', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001000', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170918160713', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001005', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170918174852', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001006', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170918174809', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001008', '10200000', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170918193641', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001011', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170919110254', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001013', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170919110029', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001014', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170919120407', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001015', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170919170534', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001016', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170920085935', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001012', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170919110215', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001017', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170920085825', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001018', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170920085657', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001019', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170920113257', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001024', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170920144255', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001028', '10200001', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920153845', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001030', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170920151550', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001031', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170920151443', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001032', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170920151648', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001035', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920154151', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001036', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920154113', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001039', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920155524', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001029', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920154223', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001037', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920154021', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001038', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920155436', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001042', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920161935', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001043', '10200300', '0000000398', '000162', 'ÁºÂ××£', '10', '1', '0', '20170921100048', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001047', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170922094936', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001049', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170922094911', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001051', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170921105332', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001055', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20170921143416', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001056', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170921143112', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001058', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170921151628', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001060', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170921150928', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001061', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170921152103', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001062', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170921152030', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001068', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170925111012', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001071', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170926084110', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001041', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170920160841', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001044', '10200300', '0000000398', '000162', 'ÁºÂ××£', '10', '1', '0', '20170921101424', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001045', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170921103419', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001050', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20170921152038', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001053', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170921115228', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001054', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170921120200', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001059', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170921144550', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001063', '10200000', '0000006093', '000067', 'FZ', '10', '1', '0', '20170922085053', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001064', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20170922090548', null);
commit;
prompt 600 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001069', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170925114845', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001070', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170925153914', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001075', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170927145838', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001076', '10200001', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170927090619', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001088', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170928145032', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001092', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170929090537', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001093', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170929091119', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001094', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170929095002', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001073', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170927093634', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001074', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170927145757', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001077', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20170928093831', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001078', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170928100424', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001079', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170928144259', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001089', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170928155614', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001091', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170929090504', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001097', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170930151825', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001098', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170930151752', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001099', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170930151909', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001103', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20171009091644', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001104', '10200300', '0000000874', '000058', '¹¨ÎÀ¶«', '10', '1', '0', '20171009091720', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001105', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20171009092319', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001108', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20171009101251', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001114', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20171009164756', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001116', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171009170448', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001120', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104501', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001121', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104702', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001129', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012091522', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001107', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20171009095104', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001112', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171009131833', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001117', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104419', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001118', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104538', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001119', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104733', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001122', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104803', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001123', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171010104830', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001125', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171010152406', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001130', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012095554', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001131', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012095432', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001132', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012095307', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001133', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20171012095348', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001134', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012104335', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001137', '10200300', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171012114329', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001138', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20171013143142', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001140', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20171013150244', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001136', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171012104245', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001144', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171013165112', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001146', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171013171049', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001149', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20171016084710', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001150', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171016102905', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001152', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171017111346', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001153', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171017111429', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001155', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171017111535', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001156', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171017111607', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001167', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171020143045', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001168', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171020143440', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001169', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171020143340', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001170', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171020143238', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001173', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171020151145', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001175', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171023112231', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001141', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20171013150210', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001143', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171013154247', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001147', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171013170926', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001151', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171017083702', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001154', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171017111505', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001157', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171019153610', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001158', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171019153815', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001159', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20171019152829', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001160', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171019154351', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001161', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171019154325', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001162', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171019154237', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001163', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171019153352', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001164', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171020092612', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001165', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171020110637', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001166', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20171020110651', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001176', '10200000', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171023112123', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001177', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20171023082943', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001178', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20171023084712', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001186', '10200300', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171025090420', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001187', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20171025102953', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001190', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171026142250', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001195', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171026155835', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001196', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20171026161319', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001200', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171027150039', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001212', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171030105451', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001213', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171030105353', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001214', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171030105312', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001216', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171030105220', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001218', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030115535', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001220', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030115438', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001221', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030115321', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001222', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171030150433', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001179', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171023140624', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001180', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171023140550', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001181', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171023140446', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001182', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20171023141859', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001183', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171023164328', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001184', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171024162252', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001188', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171026115317', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001189', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171026115216', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001191', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171026142325', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001192', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171026142356', null);
commit;
prompt 700 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001193', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171026142427', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001194', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171026142456', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001197', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171027084155', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001198', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171027084121', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001199', '10200300', '0000007217', '000095', '²Ìæ«Áá', '10', '1', '0', '20171027114234', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001202', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171027150128', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001203', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171027145959', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001204', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171027145742', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001215', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171030105141', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001217', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030115146', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001227', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030162039', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001228', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030171820', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001231', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171031093032', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001234', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171031112600', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001240', '10200300', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171031150125', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001244', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20171101114448', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001247', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171102140240', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001223', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030160050', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001224', '10200300', '0000008294', '000159', 'ÁºÂ××£', '10', '1', '0', '20171030161024', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001225', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030155918', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001226', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171030161406', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001232', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20171031085605', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001233', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171031143852', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001235', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20171031112745', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001241', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20171031154430', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001242', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171101091205', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001246', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20171102102120', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001248', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171102140156', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001249', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171102145424', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001251', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20171103085502', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001254', '10200001', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171103083517', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001255', '10200300', '0000004977', '000133', '¶ÅÀÚ', '10', '1', '0', '20171103085603', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001258', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105082628', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001257', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105082557', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001260', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142950', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001275', '10200300', '0000004977', '000133', '¶ÅÀÚ', '10', '1', '0', '20171106101701', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001277', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20171107152515', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001282', '10200300', '0000008196', '000137', 'ÀîÐ÷Ë«', '10', '1', '0', '20171108093247', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001283', '10200300', '0000008196', '000137', 'ÀîÐ÷Ë«', '10', '1', '0', '20171108093215', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001284', '10200300', '0000008196', '000137', 'ÀîÐ÷Ë«', '10', '1', '0', '20171108093129', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001285', '10200000', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20171108111334', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001290', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20171109093329', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001294', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20171108165620', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001295', '10200300', '0000008196', '000137', 'ÀîÐ÷Ë«', '10', '1', '0', '20171109090939', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001296', '10200300', '0000008196', '000137', 'ÀîÐ÷Ë«', '10', '1', '0', '20171109092409', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001261', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142900', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001262', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142928', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001263', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142818', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001264', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142750', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001265', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142728', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001266', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142652', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001267', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142628', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001268', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105143014', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001269', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105143035', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001270', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142839', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001271', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105143231', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001272', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105142559', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001273', '10200000', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20171105143252', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001278', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20171107153551', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001281', '10200300', '0000008196', '000137', 'ÀîÐ÷Ë«', '10', '1', '0', '20171108091700', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001286', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171108111802', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001287', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171108144938', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001288', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171108144835', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001289', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171108144729', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001291', '10200001', '0000006360', '000102', 'Ô¬·½ÖÞ', '10', '1', '0', '20171108152249', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000001297', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20171109142911', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000787', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170724111805', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000759', '10200001', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170718170327', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000762', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170718152443', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000780', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170724085920', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000781', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170724085951', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000782', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170724100215', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000783', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170724100115', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000784', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170724100002', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000788', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170725092044', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000793', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170726161203', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000794', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170726164134', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000796', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170726164032', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000800', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170727111001', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000805', '10200001', '0000006093', '000067', 'FZ', '10', '1', '0', '20170727115833', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000809', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170728155821', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000795', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170726163904', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000797', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170726164231', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000803', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170727114955', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000807', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170728090228', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000808', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170728101207', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000810', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170731123151', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000811', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170731161151', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000812', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170731161122', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000813', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170731161046', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000815', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170801145455', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000816', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170801145426', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000817', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20170801150609', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000820', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170803092328', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000821', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170803092358', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000814', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170801145357', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000819', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20170802150812', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000822', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20170803092853', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000824', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170803104304', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000825', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170803154219', null);
commit;
prompt 800 records committed...
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000826', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170803154148', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000827', '10200300', '0000004398', '000130', 'ÁõÀò', '10', '1', '0', '20170804085429', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000829', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170804091611', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000830', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170804093351', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000823', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170803093716', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000828', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170804090639', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000832', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170804164843', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000833', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170804164913', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000834', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170804164953', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000838', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170807152943', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000843', '10200300', '0000004977', '000133', '¶ÅÀÚ', '10', '1', '0', '20170809114342', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000848', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170810102420', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000849', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170810103516', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000850', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170810103543', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000859', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170811155204', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000860', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170811155003', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000866', '10200000', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170817154013', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000867', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170817152336', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000868', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170817153908', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000869', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170817153652', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000870', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170817155357', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000835', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170807091915', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000836', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170807091759', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000837', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170807100626', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000839', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170808145437', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000840', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170808145406', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000841', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170809110216', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000842', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170809151946', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000844', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170810083018', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000845', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170809150230', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000846', '10200300', '0000000354', '000062', '¶¡Ð¡ÁÖ', '10', '1', '0', '20170809154740', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000851', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170810150429', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000852', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170810150546', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000853', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170810150629', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000856', '10200001', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170810192251', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000858', '10200300', '0000006712', '000015', 'ÁõÁè', '10', '1', '0', '20170811150327', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000861', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170814095718', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000862', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170815142709', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000863', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170815142923', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000864', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170815142953', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000865', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170817153405', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000871', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170817163143', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000873', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170818150727', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000874', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170818152946', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000876', '10200300', '0000001435', '000098', '²ÜÇÇ', '10', '1', '0', '20170818162835', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000877', '10200300', '0000005729', '000126', 'Öì²¨', '10', '1', '0', '20170821115152', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000878', '10200001', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170821155802', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000879', '10200300', '0000001425', '000036', 'Àî´«Îä', '10', '1', '0', '20170822093144', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000880', '10200300', '0000006093', '000067', 'FZ', '10', '1', '0', '20170822105831', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000881', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170822151111', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000884', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170822151833', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000885', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170822151634', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000893', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170824121001', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000894', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170825090627', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000875', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170818152838', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000882', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170822151050', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000883', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170822151024', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000886', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170823114830', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000898', '10200300', '0000000191', '000054', 'Íò¿¡·æ', '10', '1', '0', '20170825160133', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000899', '10200300', '0000000456', '000064', 'ÑîÐ¡Æ½', '10', '1', '0', '20170825164539', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000906', '10200001', '0000004765', '000090', 'Ð¤ÓñÆ¼', '10', '1', '0', '20170828170053', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000907', '10200300', '0000006828', '000029', 'Òü¾ê', '10', '1', '0', '20170829103503', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000909', '10200300', '0000001656', '000141', 'ÐÜÏþÀ¼', '10', '1', '0', '20170829114522', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000912', '10200300', '0000006055', '000049', '²Ì´ó¾ü', '10', '1', '0', '20170830093007', null);
insert into CB_AUTH_HISTORY (ath_flowno, ath_bsncode, ath_cstno, ath_userno, ath_username, ath_actiontype, ath_authlvl, ath_authflag, ath_time, ath_rejreason)
values ('000000000895', '10200300', '0000000413', '000003', 'ÐÜÐ¡ÑÞ', '10', '1', '0', '20170825090541', null);
commit;
prompt 865 records loaded
prompt Enabling triggers for CB_AUTH_HISTORY...
alter table CB_AUTH_HISTORY enable all triggers;
set feedback on
set define on
prompt Done.
