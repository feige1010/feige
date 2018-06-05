CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_WAGE_FLOW"
AS  --迁移新大陆 企业银行 企业会员代发业务流水
begin
INSERT INTO CB_WAGE_FLOW(
        WFL_BATCHNO,
        WFL_CSTNO,
        WFL_PAYACC,
        WFL_TOTALNUM,
        WFL_TOTALAMT,
        WFL_SUBMITTIME,
        WFL_STT,
        WFL_PAYNAME,
        WFL_BSNCODE,
        WFL_OPRNO,
        WFL_OPRNAME,
        WFL_SHOWFLAG,
        WFL_APPID
)
SELECT SRVRTID,
        SUBSTR(payoff.NCID, 2) as NCID,
        FROM_ACCT_ID,
        TOTAL_COUNT,
        TOTAL_AMOUNT,
        to_char(CREATE_TIME, 'yyyymmddhh24miss') as CREATE_TIME,
        '42',
        (case
          when lengthb(FROM_ACCT_NAME) > 32 then
           null
          else
           FROM_ACCT_NAME
        end) as FROM_ACCT_NAME,
        '10300000',  --代发工资
        SUBSTR(owner, 2) as OPRNO,
        (SELECT OPER_NAME FROM   FIRMBANK_ZHONGNING.t_OPERATOR OP where OP.oid = ENTY.owner),
        '0',
        '1103'
FROM FIRMBANK_ZHONGNING.t_PAYOFF payoff , FIRMBANK_ZHONGNING.t_BF_ENTRY ENTY
where payoff.ID_ENTRY = ENTY.ID_ENTRY and MSG_ID = '0'; --查询交易状态为成功的记录
end;
/
