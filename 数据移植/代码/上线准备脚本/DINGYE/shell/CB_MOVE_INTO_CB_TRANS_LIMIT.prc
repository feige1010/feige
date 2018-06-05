create or replace procedure CB_MOVE_INTO_CB_TRANS_LIMIT
AS  --迁移新大陆 企业公转私限制
begin
   INSERT INTO CB_TRANS_LIMIT
  (TLT_CSTNO,
   TLT_STT,
   TLT_SUBMIT_USERNO,
   TLT_SUBMIT_TIME
  )
 SELECT SUBSTR(T_BIZ.NCID, 2) AS NCID,
        '1' AS STT,
        (case CTRL_BRANCH
              when '800001' then 'XNGY001'
              when '800101' then 'XNGY101'
              when '800102' then 'XNGY102'
              when '800103' then 'XNGY103'
              when '800104' then 'XNGY104'
              when '800105' then 'XNGY105'
              when '800106' then 'XNGY106'
              when '800107' then 'XNGY107'
              when '999998' then 'XNGY998'
              when '999999' then 'XNGY999'
         end) AS SUB_USR,
        TO_CHAR(SYSDATE, 'yyyymmddhh24miss') AS SUBTIME
   FROM (SELECT CT.NCID, TO_CHAR(WM_CONCAT(BIZ.BIZ_CODE)) AS ACC_RIGHT
           FROM FIRMBANK_DINGYE.T_CONTRACT CT, FIRMBANK_DINGYE.T_CONTR_ACCT_BIZ BIZ
          WHERE CT.ID_CONTRACT = BIZ.ID_CONTRACT
            AND CONTR_STATUS = '0'
          GROUP BY CT.NCID) T_BIZ,
        FIRMBANK_DINGYE.T_FIRM FIRM,
        FM_CLIENT CLT
  WHERE T_BIZ.NCID = FIRM.NCID
    AND FIRM.NCID = CLT.CLIENT_NO(+)
    AND FIRM_STATUS != '0'
    AND INSTR(ACC_RIGHT, 'CASHPAY') = 0;
end;
/
