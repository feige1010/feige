--/
CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_PRE_TRANFLOW"
AS  --迁移新大陆 企业银行 企业会员预约转账流水信息
begin
INSERT INTO CB_PRE_TRANFLOW(
        PTF_FLOWNO,
        PTF_STT,
        PTF_TRAN_TIMES,
        PTF_EXECUTETIMES,
        PTF_SUCCESSTIMES,
        PTF_FAILTIMES,
        PTF_SUCCESSAMT,
        PTF_FAILAMT,
        PTF_ENDDATE,
        PTF_DEALTIME,
        PTF_TYPE,
        PTF_NEXTDATE,
        PTF_SUBTIME,
        PTF_PRESTT
)
SELECT SRVRTID,
        '1',
         1,
         1,
         1,
         0,
         AMOUNT,
         0,
         to_char(EXPECT_DATE, 'yyyymmdd'),
         to_char(CREATE_TIME, 'yyyymmddhh24miss') as CREATE_TIME,
         '0',
         to_char(EXPECT_DATE, 'yyyymmdd'),
         to_char(SEND_TIME, 'yyyymmddhh24miss') as SEND_TIME,
         '42'
 FROM FIRMBANK_DINGYE.t_TRANSFER trans,  FIRMBANK_DINGYE.t_BF_ENTRY ENTY
where trans.ID_ENTRY = ENTY.ID_ENTRY and
       trans.MSG_ID = '0' and    --查询已成功完成交易数据
       (EXPECT_DATE is not NULL and EXPECT_DATE<=sysdate); --只查询预约交易数据
end;
/
