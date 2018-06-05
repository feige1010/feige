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
   IDO_ACCNO,
   IDO_ACC_NAME,
   IDO_PAYNO,
   IDO_PAYNAME,
   IDO_TYPE,
   IDO_INTERESTRATE,
   IDO_AMOUNT,
   IDO_SUBMITTIME,
   IDO_STT,
   IDO_STATE,
   IDO_CHANNELS,
   IDO_OPENDATE
  )
  SELECT * FROM(
     --未支取的
    SELECT  regexp_replace(C.rowid, '[/|+]', 'A')  AS uuid,
               SUBSTR(B.CLIENT_NO, 2) AS CSTNO,
               FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2)) AS USERNO,
               (SELECT UIF_USERNAME
                  FROM CB_USER_INF
                 WHERE UIF_CSTNO = SUBSTR(B.CLIENT_NO, 2)
                   AND UIF_USERNO = FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2))) AS USERNAME,
              '13000201' AS BSNCODE,
              '01' AS CRY,
               B.BASE_ACCT_NO AS ACCNO,
               B.ACCT_NAME AS ACC_NAME,
               D.BASE_ACCT_NO AS PAYNO,
               B.ACCT_NAME AS PAYNAME,
               DECODE(ACCT_TYPE, '502', '318', '503', '319','509','317') AS IDO_TYPE,
               nvl((select e.ACTUAL_RATE from  EB_INT_RATE e where e.PROD_TYPE = decode(c.NOTICE_PERIOD,'7','TZ7','1','TZ1')),0) as INTERESTRATE,  --利率
               D.TRAN_AMT,
               TO_CHAR(A.TRAN_DATE_TIME, 'yyyymmddhh24miss') AS SUBMITTIME,
               '42' AS STT,
               '1' AS STATE,
               '1103'AS CHANNELS,
               TO_CHAR(A.TRAN_DATE_TIME, 'yyyymmdd') AS OPENDATE
          FROM RB_TRAN_HIST A, RB_TRAN_HIST D, RB_ACCT B, RB_TDA C
         WHERE B.ACCT_STATUS =  'A'
           AND B.ACCT_TYPE IN ('502', '503','509')
           AND B.INTERNAL_KEY = C.INTERNAL_KEY
           AND A.INTERNAL_KEY = B.INTERNAL_KEY
           AND A.REFERENCE = D.REFERENCE
           AND D.INTERNAL_KEY <> A.INTERNAL_KEY
           AND A.TRAN_TYPE in ('4183','4189','EB25')
           AND D.TRAN_TYPE in ('4186','4180','EB22')
      union
      --已支取的
       SELECT  regexp_replace(C.rowid, '[/|+]', 'A')  AS uuid,
               SUBSTR(B.CLIENT_NO, 2) AS CSTNO,
               FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2)) AS USERNO,
               (SELECT UIF_USERNAME
                  FROM CB_USER_INF
                 WHERE UIF_CSTNO = SUBSTR(B.CLIENT_NO, 2)
                   AND UIF_USERNO = FUNC_GET_DEFAULT_USERNO(SUBSTR(B.CLIENT_NO, 2))) AS USERNAME,
              '13000201' AS BSNCODE,
              '01' AS CRY,
               B.BASE_ACCT_NO AS ACCNO,
               B.ACCT_NAME AS ACC_NAME,
               D.BASE_ACCT_NO AS PAYNO,
               B.ACCT_NAME AS PAYNAME,
               DECODE(ACCT_TYPE, '502', '318', '503', '319','509','317') AS IDO_TYPE,
               nvl((select e.ACTUAL_RATE from  EB_INT_RATE e where e.PROD_TYPE = decode(c.NOTICE_PERIOD,'7','TZ7','1','TZ1')),0) as INTERESTRATE,  --利率
               abs(decode(B.PREV_DAY_CALC_BAL, 0, D.TRAN_AMT, B.PREV_DAY_CALC_BAL)) as AMOUNT,
               TO_CHAR(C.TRAN_FACT_DATE, 'yyyymmddhh24miss') AS SUBMITTIME,
               '42' AS STT,
               '1' AS STATE,
               '1103'AS CHANNELS,
               TO_CHAR(C.TRAN_FACT_DATE, 'yyyymmdd') AS OPENDATE
          FROM RB_TRAN_HIST A, RB_TRAN_HIST D, RB_ACCT B, RB_TDA C
         WHERE B.ACCT_STATUS =  'C'
            AND ACCT_TYPE in ('502','503','509')
           AND B.INTERNAL_KEY = C.INTERNAL_KEY
           AND A.INTERNAL_KEY = B.INTERNAL_KEY
           AND A.REFERENCE = D.REFERENCE
           AND D.INTERNAL_KEY <> A.INTERNAL_KEY
           AND A.TRAN_TYPE in ('4186','4180','EB22')
           AND D.TRAN_TYPE in ('4183','4189','EB25')
     )
 WHERE USERNO IS NOT NULL;
end;
/
