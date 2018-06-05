CREATE OR REPLACE PROCEDURE "CB_MOVE_INTO_CB_AUTH_HISTORY"
AS  --迁移新大陆 企业银行 企业授权历史（CB_AUTH_HISTORY）
begin
 INSERT INTO CB_AUTH_HISTORY(
   ATH_FLOWNO,
   ATH_CSTNO,
   ATH_USERNO,
   ATH_USERNAME,
   ATH_BSNCODE,
   ATH_ACTIONTYPE,
   ATH_TIME,
   ATH_AUTHLVL,
   ATH_AUTHFLAG
)
SELECT  SRVRTID,
        SUBSTR(TRANS.NCID,2) NCID,
        SUBSTR(HIST.CALLER,3) as OPRNO,
        (SELECT OP.OPER_NAME FROM FIRMBANK_ZHONGNING.T_OPERATOR OP WHERE OID = HIST.CALLER AND ROWNUM = 1) AS OPER_NAME,
        FUNC_GET_CB_TRANS_BSN(TRANS.NCID,TO_ACCT_ID) AS BSNCODE,
        (CASE
           WHEN HIST.STEP_ID = '3' OR HIST.STEP_ID = '4' OR HIST.STEP_ID = '5' THEN --授权、二级授权、终极授权对应到授权通过
             '10'
           WHEN HIST.STEP_ID = '2' THEN  --复核
             '00'
        END) STEP,
        to_char(HIST.FINISH_TIME, 'yyyymmddhh24miss') as FINISH_TIME,
        (CASE
          WHEN HIST.STEP_ID = '3' OR HIST.STEP_ID = '4' OR HIST.STEP_ID = '5' THEN --授权、二级授权、终极授权对应到授权通过
             '1'
           ELSE
             '0'
         END)as AUTHLVL,
         '0' as AUTHFLAG
FROM FIRMBANK_ZHONGNING.T_TRANSFER TRANS, (
SELECT *
  FROM FIRMBANK_ZHONGNING.T_BF_HISTORY_STEP HIST1
 WHERE (HIST1.ID_ENTRY, HIST1.OWNER, HIST1.STEP_ID, HIST1.ACTION_ID,
 HIST1.FINISH_TIME) IN
       (SELECT HIST2.ID_ENTRY,
               HIST2.OWNER,
               HIST2.STEP_ID,
               HIST2.ACTION_ID,
               MAX(HIST2.FINISH_TIME)
          FROM FIRMBANK_ZHONGNING.T_BF_HISTORY_STEP HIST2
         GROUP BY HIST2.ID_ENTRY, HIST2.OWNER, HIST2.STEP_ID, HIST2.ACTION_ID)
) HIST
WHERE  TRANS.ID_ENTRY = HIST.ID_ENTRY AND
       TRANS.MSG_ID = '0' AND
       HIST.STEP_ID NOT IN('1', '6') AND --去除经办、发送核心步骤数据
       HIST.ACTION_ID NOT IN ('8', 5); --去除指定操作员步骤， 发送核心步骤
end;
/
