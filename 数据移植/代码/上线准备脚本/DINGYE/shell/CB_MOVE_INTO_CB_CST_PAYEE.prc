--/
create or replace procedure CB_MOVE_INTO_CB_CST_PAYEE
AS  --迁移新大陆 企业银行 企业会员收款人名册
begin
 insert into CB_CST_PAYEE(
   CCP_CSTNO,
   CCP_ACCNO,
   CCP_ACCBANKTYPE,
   CCP_TRANCHANNEL,
   CCP_ACCNAME,
   CCP_ACCALIASNAME,
   CCP_UNIONBANKNO,
   CCP_RECBANK,
   CCP_USERID,
   CCP_COMMON
 )
 select 
  substr(us.NCID, 2) as NCID,
  us.ACCT_ID,
  (case INTRA_BANK
    when 'Y' then '0'       --行内转账
    when 'N' then '1'       --跨行转账
    else null end) as INTRA_BANK,
  (case INTRA_BANK
    when 'Y' then '3'
    when 'N' then '0'
    else null end) TRANCHANNEL,  --跨行转账默认设置为跨行普通转账
  us.NAME,
  (case
    when lengthb(us.ALIAS_NAME) < = 30 then
     us.ALIAS_NAME
    else
     null
  end) AS ALIAS_NAME,
  us.BANK_NUM,
  us.BANK_NAME,
  substr(op.oid, 3) as oid,
  '1' as COMMON
 from (SELECT * FROM FIRMBANK_DINGYE.t_usual_payee WHERE ID_USUAL_PAYEE IN(
       select max(ID_USUAL_PAYEE)AS ID_USUAL_PAYEE from FIRMBANK_DINGYE.t_usual_payee group by NCID, INTRA_BANK, ACCT_ID)) us, FIRMBANK_DINGYE.t_operator op
 where us.ncid = op.ncid and
       us.ncid in (select ncid from FIRMBANK_DINGYE.t_firm where firm_status != '0');  --过滤掉已注销客户
end;
/
