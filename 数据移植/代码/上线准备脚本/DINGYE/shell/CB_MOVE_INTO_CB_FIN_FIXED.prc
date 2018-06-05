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
        FFX_PAYNAME,
        FFX_CRY,
        FFX_SUBMITTIME,
	FFX_SENDTIME,
        FFX_STT,
        FFX_RCVACC,
        FFX_RCVNAME,
        FFX_TRANAMT,
        FFX_CHANNELS,
        FFX_PERIOD,
        FFX_AUTOSAVE,
        FFX_INTBEGINDATE,
        FFX_OPENNODE,
        FFX_ACCRUAL,
        FFX_INTERESTRATE
)
SELECT *
FROM(
       --活期转定期,未支取的
       SELECT (regexp_replace(C.rowid, '[/|+]', 'A') || 'HD') AS FLOWNO,
       SUBSTR(B.CLIENT_NO, 2) AS CSTNO,
       FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2)) AS USERNO,
       (SELECT UIF_USERNAME
          FROM CB_USER_INF
         WHERE UIF_CSTNO = SUBSTR(B.CLIENT_NO, 2)
           AND UIF_USERNO = FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2))) AS USERNAME,
      '13000101' AS BSNCODE,  --活期转定期
       D.BASE_ACCT_NO AS PAYACC, --付款账户
       B.ACCT_NAME AS PAYNAME,   --付款账户名
       '01' AS CRY,
       to_char(A.TRAN_DATE_TIME, 'yyyymmddhh24miss') as SUBMITTIME,
       to_char(A.TRAN_DATE_TIME, 'yyyymmddhh24miss') as SENDTIME,
       '42' AS STT,
       A.BASE_ACCT_NO AS RCVACC,--收款账户
       B.ACCT_NAME AS RCVNAME,  --收款账名
       A.TRAN_AMT AS TRANAMT, 
       '1103' AS CHANNELS,
       (CASE
         WHEN DEP_TERM_TYPE = 'M' AND DEP_TERM_PERIOD = '3' THEN
          3 --3个月整存整取
         WHEN DEP_TERM_TYPE = 'M' AND DEP_TERM_PERIOD = '6' THEN
          6 --6个月整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '1' THEN
          12 --1年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '2' THEN
          24 --2年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '3' THEN
          36 --3年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '5' THEN
          60 --5年整存整取
       END) AS PERIOD,
       (CASE
          WHEN C.AUTO_RENEW_ROLLOVER = 'W' THEN '1'
          WHEN C.AUTO_RENEW_ROLLOVER = 'O' THEN '2'
          ELSE
           '0'
          END) AS AUTOSAVE, -- 自动转存方式 0：不续存；1：本金转存 ；2：本息转存
       to_char(C.TRAN_FACT_DATE, 'yyyymmdd') AS INTBEGINDATE, -- 起息日期
       FUNC_GET_CST_OPENNODE(B.CLIENT_NO) AS OPENNODE,
       NULL as ACCRUAL, --利息
       E.CR_ACCT_LEVEL_INT_RATE --利率
  FROM RB_TRAN_HIST A, RB_ACCT B, RB_TDA C, RB_TRAN_HIST D,RB_INT_DETAIL E
  WHERE B.ACCT_STATUS = 'A'
   AND b.ACCT_TYPE = '500'
   AND A.INTERNAL_KEY = B.INTERNAL_KEY
   AND B.INTERNAL_KEY = C.INTERNAL_KEY
   AND B.INTERNAL_KEY = E.INTERNAL_KEY
   AND A.REFERENCE = D.REFERENCE
   AND D.INTERNAL_KEY <> A.INTERNAL_KEY
   AND A.TRAN_TYPE in ('4183','4189')
   AND D.TRAN_TYPE in ('4186','4180')
   
  union
  
  ----活期转定期,已支取的
  SELECT (regexp_replace(C.rowid, '[/|+]', 'A') || 'HD') AS FLOWNO,
       SUBSTR(B.CLIENT_NO, 2) AS CSTNO,
       FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2)) AS USERNO,
       (SELECT UIF_USERNAME
          FROM CB_USER_INF
         WHERE UIF_CSTNO = SUBSTR(B.CLIENT_NO, 2)
           AND UIF_USERNO = FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2))) AS USERNAME,
      '13000101' AS BSNCODE,  --活期转定期
       D.BASE_ACCT_NO AS PAYACC, --付款账户
       B.ACCT_NAME AS PAYNAME,   --付款账户名
       '01' AS CRY,
       to_char(C.Tran_Fact_Date, 'yyyymmddhh24miss') as SUBMITTIME,
       to_char(C.Tran_Fact_Date, 'yyyymmddhh24miss') as SENDTIME,
       '42' AS STT,
       A.BASE_ACCT_NO AS RCVACC,--收款账户
       B.ACCT_NAME AS RCVNAME, --收款账名
       abs(decode(B.PREV_DAY_CALC_BAL, 0, A.TRAN_AMT, B.PREV_DAY_CALC_BAL)) AS TRANAMT,  
       '1103' AS CHANNELS,
       (CASE
         WHEN DEP_TERM_TYPE = 'M' AND DEP_TERM_PERIOD = '3' THEN
          3 --3个月整存整取
         WHEN DEP_TERM_TYPE = 'M' AND DEP_TERM_PERIOD = '6' THEN
          6 --6个月整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '1' THEN
          12 --1年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '2' THEN
          24 --2年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '3' THEN
          36 --3年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '5' THEN
          60 --5年整存整取
       END) AS PERIOD,
       (CASE
          WHEN C.AUTO_RENEW_ROLLOVER = 'W' THEN '1'
          WHEN C.AUTO_RENEW_ROLLOVER = 'O' THEN '2'
          ELSE
           '0'
          END) AS AUTOSAVE, -- 自动转存方式 0：不续存；1：本金转存 ；2：本息转存
       to_char(C.TRAN_FACT_DATE, 'yyyymmdd') AS INTBEGINDATE, -- 起息日期
       FUNC_GET_CST_OPENNODE(B.CLIENT_NO) AS OPENNODE,
       NULL as ACCRUAL, --利息
       E.CR_ACCT_LEVEL_INT_RATE --利率
  FROM RB_TRAN_HIST A, RB_ACCT B, RB_TDA C, RB_TRAN_HIST D,RB_INT_DETAIL E
  WHERE B.ACCT_STATUS = 'C'
   AND b.ACCT_TYPE = '500'
   AND A.INTERNAL_KEY = B.INTERNAL_KEY
   AND B.INTERNAL_KEY = C.INTERNAL_KEY
   AND B.INTERNAL_KEY = E.INTERNAL_KEY
   AND A.REFERENCE = D.REFERENCE
   AND D.INTERNAL_KEY <> A.INTERNAL_KEY
   AND D.TRAN_TYPE in ('4183','4189')
   AND A.TRAN_TYPE in ('4186','4180')
   
   union
   
  --定期转活期
  SELECT (regexp_replace(E.rowid, '[/|+]', 'A') || 'DH') AS FLOWNO,
        SUBSTR(B.CLIENT_NO, 2) AS CSTNO,
        FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2)) AS USERNO,
       (SELECT UIF_USERNAME
          FROM CB_USER_INF
         WHERE UIF_CSTNO = SUBSTR(B.CLIENT_NO, 2)
           AND UIF_USERNO = FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2))) AS USERNAME,
       '13000102' AS BSNCODE, --定期转活期
       B.BASE_ACCT_NO AS PAYACC, --付款账户
       B.ACCT_NAME AS PAYNAME,   --付款账户名
       '01' AS CRY,
       to_char(D.TRAN_DATE_TIME, 'yyyymmddhh24miss') as SUBMITTIME,
       to_char(D.TRAN_DATE_TIME, 'yyyymmddhh24miss') as SENDTIME,
       '42' AS STT,
       C.BASE_ACCT_NO AS RCVACC,  --收款账户
       B.ACCT_NAME AS RCVNAME,    --收款账户名
       D.TRAN_AMT AS TRANAMT,
       '1103' AS CHANNELS,
       (CASE
         WHEN DEP_TERM_TYPE = 'M' AND DEP_TERM_PERIOD = '3' THEN
          3 --3个月整存整取
         WHEN DEP_TERM_TYPE = 'M' AND DEP_TERM_PERIOD = '6' THEN
          6 --6个月整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '1' THEN
          12 --1年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '2' THEN
          24 --2年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '3' THEN
          36 --3年整存整取
         WHEN DEP_TERM_TYPE = 'Y' AND DEP_TERM_PERIOD = '5' THEN
          60 --5年整存整取
       END) AS PERIOD,
       (CASE
          WHEN E.AUTO_RENEW_ROLLOVER = 'W' THEN '1'
          WHEN E.AUTO_RENEW_ROLLOVER = 'O' THEN '2'
          ELSE
           '0'
          END) AS AUTOSAVE, -- 自动转存方式 0：不续存；1：本金转存 ；2：本息转存
       to_char(E.TRAN_FACT_DATE, 'yyyymmdd') AS INTBEGINDATE, -- 起息日期
       FUNC_GET_CST_OPENNODE(B.CLIENT_NO) AS OPENNODE,
       (F.CR_INT_PAID_CTD + F.CR_INT_ADJ_POSTED) as ACCRUAL, --利息
       F.CR_ACCT_LEVEL_INT_RATE --利率
  FROM RB_ACCT B, RB_TRAN_HIST D, RB_TRAN_HIST C, RB_TDA E, RB_INT_DETAIL F
 WHERE ACCT_STATUS = 'C'
   AND ACCT_TYPE = '500'
   AND D.INTERNAL_KEY = B.INTERNAL_KEY
   AND D.INTERNAL_KEY = E.INTERNAL_KEY
   AND B.INTERNAL_KEY = F.INTERNAL_KEY
   AND D.TRAN_TYPE = '4186'
   AND D.REFERENCE = C.REFERENCE
   AND D.INTERNAL_KEY <> C.INTERNAL_KEY
  )
 WHERE USERNO IS NOT NULL AND PAYACC IS NOT NULL;
end;
/
