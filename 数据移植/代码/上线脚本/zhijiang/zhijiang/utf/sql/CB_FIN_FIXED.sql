prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_FIN_FIXED...
alter table CB_FIN_FIXED disable all triggers;
prompt Loading CB_FIN_FIXED...
prompt Table is empty
prompt Enabling triggers for CB_FIN_FIXED...
alter table CB_FIN_FIXED enable all triggers;
set feedback on
set define on
prompt Done.
