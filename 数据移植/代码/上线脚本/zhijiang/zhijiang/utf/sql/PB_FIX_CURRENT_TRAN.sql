prompt PL/SQL Developer import file
prompt Created on 2017Äê11ÔÂ9ÈÕ by saasuser1
set feedback off
set define off
prompt Disabling triggers for PB_FIX_CURRENT_TRAN...
alter table PB_FIX_CURRENT_TRAN disable all triggers;
prompt Loading PB_FIX_CURRENT_TRAN...
prompt Table is empty
prompt Enabling triggers for PB_FIX_CURRENT_TRAN...
alter table PB_FIX_CURRENT_TRAN enable all triggers;
set feedback on
set define on
prompt Done.
