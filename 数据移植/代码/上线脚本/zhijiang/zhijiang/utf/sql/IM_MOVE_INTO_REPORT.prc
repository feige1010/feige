create or replace procedure IM_MOVE_INTO_REPORT
AS
   v_start varchar2(8);
   v_end varchar2(8);
   v_retcode varchar2(1);
   v_date varchar2(8);
begin

  delete from IM_REPORT_DAILY_USERS_BRH;
  delete from IM_REPORT_DAILY_TRANS_ACC;
  delete from IM_REPORT_DAILY_TRANS_CBBRH;
  delete from IM_REPORT_DAILY_TRANS_PBACCNO;
  delete from IM_REPORT_DAILY_TRANS_PBCSTBRH;
  COMMIT;

  UPDATE PB_CST_INF CST
     SET CIP_CHANNEL = '1101'
   WHERE CIP_CHANNEL IS NULL;

  UPDATE PB_CST_INF CST
  SET CST.CIP_OPENTIME = CST.CIP_EBANKTIME
  WHERE CIP_OPENTIME IS NULL;

     
  UPDATE PB_TRAN_FLOW flow
     SET TRF_APPID = '1101'
   WHERE TRF_APPID IS NULL;

  UPDATE PB_FIX_CURRENT_TRAN
  SET FCT_APPID = '1101'
  WHERE FCT_APPID IS NULL;

  UPDATE CB_FIN_FIXED
  SET FFX_SENDTIME = FFX_SUBMITTIME
  WHERE FFX_SENDTIME IS NULL;

  UPDATE CB_TRANFLOW
  SET TFL_APPID = '1103'
  WHERE TFL_APPID IS NULL;

  COMMIT;

  v_start :='20161117';
    v_end :='20171108';
  v_date := v_start;
  LOOP
     IM_PCKG_REPORT_DAILY_USERS.REPORT_DAILY_USERS(v_date,v_retcode);
     v_date := to_char(to_date(v_date,'yyyymmdd') + 1,'yyyymmdd');
    EXIT WHEN v_date > v_end;
  END LOOP;
  COMMIT;

  v_start :='20161109';
    v_end :='20171108';
  v_date := v_start;
  LOOP
    IM_PCKG_REPORT_DAILY_CBTRANS.REPORT_DAILY_TRANS(v_date,v_retcode);
    v_date := to_char(to_date(v_date,'yyyymmdd') +1,'yyyymmdd');
    EXIT WHEN v_date > v_end;
  END LOOP;
  COMMIT;

  v_start :='20161109';
    v_end :='20171108';
  v_date := v_start;
  LOOP
     IM_PCKG_REPORT_DAILY_PBTRANS.REPORT_DAILY_TRANS(v_date,v_retcode);
     v_date := to_char(to_date(v_date,'yyyymmdd') +1,'yyyymmdd');
    EXIT WHEN v_date > v_end;
  end loop;
  COMMIT;
end;
/
