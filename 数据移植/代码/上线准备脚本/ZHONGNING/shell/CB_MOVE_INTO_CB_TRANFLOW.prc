CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_TRANFLOW"
AS  --迁移新大陆 企业银行 企业会员普通转账指令流水（CB_TRANFLOW）
begin

INSERT INTO CB_TRANFLOW(
        TFL_BATCHNO,
        TFL_FLOWNO,
        TFL_CSTNO,
        TFL_PAYACC,
        TFL_PAYNAME,
        TFL_RCVACC,
        TFL_RCVNAME,
        TFL_RCVBANK,
        TFL_COMITRNO,
        TFL_TRANAMT,
        TFL_PURPOSE,
        TFL_SUBMITTIME,
        TFL_RMTTYPE,
        TFL_STT,
        TFL_OPRNO,
        TFL_OPRNAME,
        TFL_BSNCODE,
        TFL_PRETRANFLAG,
        TFL_DEALTIME,
        TFL_APPID,
        TFL_SENDTIME,
        TFL_CHKCODE,
        TFL_CRY,
        TFL_FEE1,
        TFL_TYPE
)
SELECT  (CASE
         WHEN trans.EXPECT_DATE is NULL THEN
          null
         ELSE
          SRVRTID
       END) as PRETRANFLAG,
       SRVRTID,
       SUBSTR(trans.NCID, 2) NCID,
       FROM_ACCT_ID,
       FROM_ACCT_NAME,
       TO_ACCT_ID,
       TO_ACCT_NAME,
       TO_BANK_NAME,
       TO_BANK_ID,
       AMOUNT,
       (case
         when lengthb(PURPOSE) < = 60 then
          PURPOSE
         else
          null
       end) as PURPOSE,
       to_char(CREATE_TIME, 'yyyymmddhh24miss') as CREATE_TIME,
       URGENT_LEVEL, --普通、快速转账标示标志
       '42',
       SUBSTR(ENTY.OWNER, 3) as OPRNO,
       (select op.oper_name
          from FIRMBANK_ZHONGNING.t_operator op
         where oid = ENTY.OWNER
           and rownum = 1) as oper_name,
       FUNC_GET_CB_TRANS_BSN(trans.NCID, TO_ACCT_ID) as BSNCODE,
       (CASE
         WHEN trans.EXPECT_DATE is NULL THEN
          '0'
         ELSE
          '1'
       END) as PRETRANFLAG,
       (CASE
         WHEN trans.EXPECT_DATE IS NOT NULL THEN
          to_char(EXPECT_DATE, 'yyyymmddhh24miss')
         ELSE
          null
       END) as EXPECT_DATE,
       '1103',
       to_char(SEND_TIME, 'yyyymmddhh24miss') as SEND_TIME,
       SRVRTID,
       '01' as CRY,
       factorage,
       (CASE
         WHEN trans.Intra_Bank = 'N' THEN
          '1'
         ELSE
          '0'
       END) AS TFL_TYPE
  FROM FIRMBANK_ZHONGNING.t_TRANSFER trans, FIRMBANK_ZHONGNING.t_BF_ENTRY ENTY
 where trans.ID_ENTRY = ENTY.ID_ENTRY
   and trans.MSG_ID = '0';
end;
/
