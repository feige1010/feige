CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_FIN_FIXED"
AS  --迁移新大陆 企业银行 企业会员定活互转流水信息
begin
INSERT INTO CB_FIN_FIXED(
        FFX_FLOWNO,
        FFX_CSTNO,
        FFX_OPRNO,
        FFX_OPRNAME,
        FFX_BSNCODE,
        FFX_PAYACC,
        FFX_CRY,
        FFX_SUBMITTIME,
	FFX_SENDTIME,
        FFX_STT,
        FFX_PAYNAME,
        FFX_RCVACC,
        FFX_RCVNAME,
        FFX_TRANAMT,
        FFX_CHANNELS,
        FFX_PERIOD,
        FFX_AUTOSAVE,
        FFX_INTBEGINDATE,
        FFX_OPENNODE,
        FFX_INTERESTRATE
)
SELECT td.SRVRTID,
        SUBSTR(td.ncid,2) as ncid,
        SUBSTR(OWNER,3) as OPRNO,
        (SELECT OPER_NAME FROM FIRMBANK_ZHIJIANG.t_OPERATOR OP where OP.oid = ENTY.owner and rownum = 1) as OPRNAME,
        (CASE WHEN ACTION_TYPE = 1 THEN '13000101'  --活期转定期
              WHEN ACTION_TYPE = 2 THEN '13000102'  --定期转活期
        END) as BSNCODE,
        (CASE WHEN ACTION_TYPE = 1 THEN DEMAND_ACCT_ID --活期转定期
               WHEN ACTION_TYPE = 2 THEN FIXED_ACCT_ID --定期转活期
        END) as PAYACC,
        '01',
        to_char(CREATE_TIME, 'yyyymmddhh24miss') as CREATE_TIME,
	to_char(CREATE_TIME, 'yyyymmddhh24miss') as SENDTIME,
        '42',
        (CASE WHEN ACTION_TYPE = 1 THEN DEMAND_ACCT_NAME --活期转定期
               WHEN ACTION_TYPE = 2 THEN FIXED_ACCT_MAME  --定期转活期
        END) as PAYNAME,
        (CASE WHEN ACTION_TYPE = 1 THEN FIXED_ACCT_ID   --活期转定期
               WHEN ACTION_TYPE = 2 THEN DEMAND_ACCT_ID --定期转活期
        END) as RCVACC,
        (CASE WHEN ACTION_TYPE = 1 THEN FIXED_ACCT_MAME    --活期转定期
               WHEN ACTION_TYPE = 2 THEN  DEMAND_ACCT_NAME  --定期转活期
        END) as RCVNAME,
        AMOUNT,
        '1103',
        (CASE WHEN ACTION_TYPE = 1 THEN    --活期转定期
            decode(TERM_TYPE, 'M03', 3, 'M06', 6, 'Y01', 12 , 'Y02', 24 ,'Y03', 36 ,'Y05', 60)
        END) as PERIOD,
        CONTINUE_TERM,
        to_char(OPEN_TIME, 'yyyymmdd') as BEGINDATE,
        FUNC_GET_CST_OPENNODE(td.ncid) AS OPENNODE,
        td.ratio
FROM FIRMBANK_ZHIJIANG.t_TIME_DEMAND td,  FIRMBANK_ZHIJIANG.t_BF_ENTRY ENTY
where td.ID_ENTRY = ENTY.ID_ENTRY  and MSG_ID = '0' AND --只查询交易完成状态数据
      ACTION_TYPE IN(1, 2);  --只查询活期转定期、定期转活期数据
end;
/
