CREATE OR REPLACE PROCEDURE PB_MOVE_INTO_PB_ELE_BILL
AS  --迁移新大陆 个人银行 个人会员电子回单信息
begin
INSERT INTO PB_ELECTRONIC_BILL(
        PEB_SEQUENCE,
        PEB_CSTNO,
        PEB_FLOWNO,
        PEB_APPLYTIME,
        PEB_TYPE,
        PEB_PAYACC,
        PEB_PAYACCNAME,
        PEB_RCVACC,
        PEB_RCVACCNAME,
        PEB_RCVBANK,
        PEB_RCVBANKNAME,
        PEB_OPENNODE,
        PEB_AMOUNT,
        PEB_SUBTIME,
        PEB_CRYTYPE,
        PEB_FEE,
        PEB_USEAGE,
        PEB_BSNCODE,
        PEB_PRINTTIMES,
        PEB_VERIFYCODE
)
SELECT  netflow.TRANFLOW_NO,
        netflow.CID,
        netflow.TRANFLOW_NO,
        to_char(TRAN_TIME, 'yyyymmddhh24miss') as TRAN_TIME,
        '0',
        netflow.ACCT_NO,
        (select cst.name from PERBANK_ZHONGNING.t_customer cst, PERBANK_ZHONGNING.t_account acc
         where cst.cid = acc.cid and
              acc.acct_no = netflow.ACCT_NO) as PAYACCNAME,
        tranflow.TACCT,
        tranflow.TACCTNAME,
        tranflow.TUNCODE,
        tranflow.TBANKNAME,
        (select substr(brh_name, 1, instr(brh_name, '银行') + 1) as brh_name  from im_branch where brh_id = FUNC_GET_ACCT_OPENNODE(netflow.ACCT_NO)) as OPENNODE,
         netflow.MONEY,
        to_char(netflow.TRAN_TIME, 'yyyymmddhh24miss') as TRAN_TIME,
        '01' as CRYTYPE,
        tranflow.SERVICE_CHARGE,
        (case
          when length(tranflow.PURPOSE) < = 100 then
           tranflow.PURPOSE
          else
           null
        end) as PURPOSE，
        (CASE
           WHEN tranflow.route = '01' THEN '00300000' --行内
           ELSE
            '00300100' -- 他行
         END) as BSNCODE,
        0,
        '00000000'
FROM
PERBANK_ZHONGNING.t_NETTRAN_FLOW netflow,  PERBANK_ZHONGNING.t_TRANS_FLOW tranflow
WHERE netflow.ID_FLOW = tranflow.ID_FLOW and  DIRECTION = '1'  AND netflow.TRANFLOW_NO IS NOT NULL;  --查询转出流水交易
end;
/
