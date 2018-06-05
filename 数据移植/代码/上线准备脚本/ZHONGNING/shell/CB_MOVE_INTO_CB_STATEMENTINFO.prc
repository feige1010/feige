CREATE OR REPLACE PROCEDURE CB_MOVE_INTO_CB_STATEMENTINFO(PARAM_INDEX IN INTEGER)
AS --迁移新大陆 企业银行余额对账信息 PARAM_INDEX 前退月数

VAR_CURRENT_MONTH VARCHAR2(8); --查询年月
VAR_INDEX INTEGER;
BEGIN
      VAR_CURRENT_MONTH := TO_CHAR(ADD_MONTHS(SYSDATE, - PARAM_INDEX), 'yyyymm') ;
      VAR_INDEX := PARAM_INDEX;
   LOOP      
      INSERT INTO CB_STATEMENTINFO
        (SMI_SMNO,
         SMI_ACCNO,
         SMI_STT,
         SMI_BILLMONTH,
         SMI_ACCNAME,
         SMI_BALANCE,
         SMI_CUSTNO,
         SMI_CTTDATE)
        SELECT (rowid || VAR_CURRENT_MONTH) as SMI_SMNO,
               ra.base_acct_no as SMI_ACCNO,
               '01' as SMI_STT,
               VAR_CURRENT_MONTH as SMI_BILLMONTH, --日期参数
               ra.acct_name as SMI_ACCNAME,
               abs(ra.actual_bal) as SMI_BALANCE,
               substr(ra.client_no, 2) as SMI_CUSTNO,
               VAR_CURRENT_MONTH || '02' as SMI_CTTDATE
          FROM rb_acct ra
         WHERE ra.client_no in
               ((SELECT DISTINCT ra.client_no
                  FROM rb_tran_hist rth
                  LEFT JOIN rb_acct ra
                    ON rth.internal_key = ra.internal_key
                 WHERE TO_CHAR(tran_date, 'YYYYMM') = VAR_CURRENT_MONTH --日期参数
                   AND rth.source_type IN ('CB', 'NB', 'MT')
                   AND ra.deposit_type = 'C'
                   AND ra.client_type <> '100'))
           AND ra.deposit_type = 'C'
           AND ra.client_type <> '100';
      
      COMMIT;
      VAR_INDEX := VAR_INDEX - 1;
      VAR_CURRENT_MONTH := TO_CHAR(ADD_MONTHS(SYSDATE, 0 - VAR_INDEX), 'yyyymm');
      
    EXIT WHEN VAR_INDEX = 0;
  END LOOP;
END;
/
