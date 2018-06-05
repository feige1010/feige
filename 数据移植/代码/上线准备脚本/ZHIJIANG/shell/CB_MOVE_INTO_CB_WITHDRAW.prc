CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_WITHDRAW"
AS  --迁移新大陆 企业银行 企业会员通知存款支取指令流水信息
begin
INSERT INTO CB_INFORM_WITHDRAW(
        CIW_FLOWNO,
        CIW_BSNCODE,
        CIW_CSTNO,
        CIW_OPRNO,
        CIW_OPRNAME,
        CIW_ACCNO,
        CIW_ACC_NAME,
        CIW_TYPE,
        CIW_CRY,
        CIW_SUBMITTIME,
        CIW_STT,
        CIW_PAYNO,
        CIW_PAYNAME,
        CIW_WITHDRAWDATE,
        CIW_BEGINDATE，
        CIW_ENDDATE，
        CIW_AMOUNT,
        CIW_CHANNELS
)
SELECT SRVRTID,
        '13000204' as BSNCODE,
        SUBSTR(td.NCID, 2) as NCID,
        SUBSTR(OWNER, 3) as OPRNO,
        (SELECT OPER_NAME FROM FIRMBANK_ZHIJIANG.t_OPERATOR OP where OP.oid = ENTY.owner and rownum = 1) as OPRNAME,
        FIXED_ACCT_ID,
        FIXED_ACCT_MAME,
        decode(TERM_TYPE, 'D01', '318', 'D07', '319') as TERM_TYPE,
        '01',
        to_char(CREATE_TIME, 'yyyymmddhh24miss') as CREATE_TIME,
        '42',
        DEMAND_ACCT_ID,
        DEMAND_ACCT_NAME,
         to_char(SEND_TIME, 'yyyymmdd') as WITHDRAWDATE,
         to_char(OPEN_TIME, 'yyyymmdd') as BEGINDATE,
         to_char(MATURITY_DATE - (1/(60*60*24)), 'yyyymmdd') as ENDDATE,
         AMOUNT,
        '1103'
FROM FIRMBANK_ZHIJIANG.t_TIME_DEMAND td, FIRMBANK_ZHIJIANG.t_BF_ENTRY ENTY
where td.ID_ENTRY = ENTY.ID_ENTRY   AND
       --ACTION_TYPE IN('4', '5','6') and  --只查询活期转通知，预约取款、取消预约接口未实现不移植
       ACTION_TYPE IN('6') and  --立即支取
       MSG_ID = '0' AND  --只查询交易成功记录
       TERM_TYPE IS NOT NULL;
end;
/
