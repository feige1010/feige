prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_INFORM_WITHDRAW...
alter table CB_INFORM_WITHDRAW disable all triggers;
prompt Loading CB_INFORM_WITHDRAW...
prompt Table is empty
prompt Enabling triggers for CB_INFORM_WITHDRAW...
alter table CB_INFORM_WITHDRAW enable all triggers;
set feedback on
set define on
prompt Done.
