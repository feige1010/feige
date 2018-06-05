prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for CB_INFORM_DEPOSIT_OPEN...
alter table CB_INFORM_DEPOSIT_OPEN disable all triggers;
prompt Loading CB_INFORM_DEPOSIT_OPEN...
prompt Table is empty
prompt Enabling triggers for CB_INFORM_DEPOSIT_OPEN...
alter table CB_INFORM_DEPOSIT_OPEN enable all triggers;
set feedback on
set define on
prompt Done.
