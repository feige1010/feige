CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_INFORM_OPEN"
AS  --迁移新大陆 企业银行 企业会员通知存款开立指令流水信息(CB_INFORM_DEPOSIT_OPEN)
begin
INSERT INTO  CB_INFORM_DEPOSIT_OPEN(
 IDO_FLOWNO,
 IDO_CSTNO,
 IDO_OPRNO,
 IDO_OPRNAME,
 IDO_BSNCODE,
 IDO_CRY,
 IDO_TYPE,
 IDO_INTERESTRATE,
 IDO_AMOUNT,
 IDO_SUBMITTIME,
 IDO_STT,
 IDO_ACCNO,
 IDO_ACC_NAME,
 IDO_PAYNO,
 IDO_PAYNAME,
 IDO_STATE,
 IDO_CHANNELS,
 IDO_OPENDATE
)
SELECT SRVRTID，
        SUBSTR(td.NCID, 2) as NCID,
        SUBSTR(OWNER, 3) as OPRNO,
        (SELECT OPER_NAME FROM FIRMBANK_ZHONGNING.t_OPERATOR OP where OP.oid = ENTY.owner) as OPRNAME,
        '13000201',
        '01',
         decode(TERM_TYPE, 'D01', '318', 'D07', '319') as TERM_TYPE,
         (CASE WHEN RATIO is not NULL THEN TO_CHAR(RATIO, '90.999')
                ELSE
                FUNC_GET_CURRENT_RATE(TERM_TYPE)
         END) as RATIO,
         AMOUNT,
         to_char(CREATE_TIME, 'yyyymmddhh24miss') as CREATE_TIME,
        '42',
        FIXED_ACCT_ID,
        FIXED_ACCT_MAME,
        DEMAND_ACCT_ID,
        DEMAND_ACCT_NAME,
        '1',
        '1103',
         to_char(OPEN_TIME, 'yyyymmdd') as OPEN_TIME
FROM FIRMBANK_ZHONGNING.t_TIME_DEMAND td, FIRMBANK_ZHONGNING.t_BF_ENTRY ENTY
where td.ID_ENTRY = ENTY.ID_ENTRY   AND
       ACTION_TYPE IN('0') and  --只查询活期转通知
       MSG_ID = '0'; --只查询交易成功记录
end;
/
