prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for PB_CST_INF_HIS...
alter table PB_CST_INF_HIS disable all triggers;
prompt Loading PB_CST_INF_HIS...
prompt Table is empty
prompt Enabling triggers for PB_CST_INF_HIS...
alter table PB_CST_INF_HIS enable all triggers;
set feedback on
set define on
prompt Done.
