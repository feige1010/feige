CREATE OR REPLACE PROCEDURE PB_MOVE_INTO_PB_TRANSFER
AS  --迁移新大陆 个人银行 个人会员转账交易流水信息
begin
INSERT INTO PB_TRANSFER(
        PTR_FLOWNO,
        PTR_MEMBERID,
        PTR_PAYACC,
        PTR_RCVACC,
        PTR_RCVNAME,
        PTR_RCVBANKNAME,
        PTR_COMITRNO,
        PTR_TRANAMT,
        PTR_FEE,
        PTR_UASGE,
        PTR_BANK_TYPE,
        PTR_ORDER_IDENTIFY,
        PTR_ISMSG_FLAG,
        PTR_STT,
        PTR_DATE,
        PTR_APPID)
SELECT netflow.TRANFLOW_NO,
        netflow.CID,
        netflow.ACCT_NO,
        tranflow.TACCT,
        tranflow.TACCTNAME,
        tranflow.TBANKNAME,
        tranflow.TUNCODE,
        netflow.MONEY,
        tranflow.SERVICE_CHARGE,
        (case
          when length(tranflow.PURPOSE) < = 150 then
           tranflow.PURPOSE
          else
           null
        end) as PURPOSE,
        (CASE
           WHEN  tranflow.route = '01' THEN  '0' --行内
           ELSE
            '1' -- 他行
         END) as BANK_TYPE,
         '0' as ORDER_IDENTIFY,--非预约交易
         '1' as ISMSG_FLAG, --非短信通知
         '90' as STT, --交易状态成功
          to_char(TRAN_TIME, 'yyyymmddhh24miss') as TRAN_TIME,
          '1101'
FROM
PERBANK_DINGYE.t_NETTRAN_FLOW netflow,  PERBANK_DINGYE.t_TRANS_FLOW tranflow
WHERE netflow.ID_FLOW = tranflow.ID_FLOW and  DIRECTION = '1' AND netflow.TRANFLOW_NO IS NOT NULL;  --查询转出流水交易
end;
/
