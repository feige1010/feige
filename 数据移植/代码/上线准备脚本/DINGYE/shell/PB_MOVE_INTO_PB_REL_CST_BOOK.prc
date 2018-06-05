--/
create or replace procedure PB_MOVE_INTO_PB_REL_CST_BOOK
AS  --迁移新大陆 个人会员收款人名册信息
begin
 insert into PB_REL_CST_BOOK(
  PBK_MEMBERID,
  PBK_ACCNO,
  PBK_ACCNAME,
  PBK_ALIAS,
  PBK_CRYTYPE,
  PBK_CHANNEL,
  PBK_BANKNAME,
  PBK_COMITRNO,
  PBK_CHANNEL_FLAG,
  PBK_MOBILEPHONE
)
select
  CID,
  ACCT_NO,
  ACCT_NAME,
  (case 
    when lengthb(TACCT_ALIAS) > 30 then
     null
    else 
     TACCT_ALIAS
  end) as TACCT_ALIAS,
  '01' as CRYTYPE,
  (case  
     when TACCT_TYPE = '00' then '0'
     when TACCT_TYPE ='01' then '0'
     when TACCT_TYPE ='10' then '3' 
     when TACCT_TYPE ='11' then '3'
     when FUNC_SAME_BANK_ACCT(ACCT_NO) = '1' then '0'
     else '3'
   end) TACCT_TYPE,   --转账类型 新网银的主键字段，当导入数据位空时根据账户号是否为本行卡动态判断
  nv_bank.zfhhm as BANKNAME,
  cst_acc.native_bank as COMITRNO,
  '1101' as  CHANNEL_FLAG, --个人银行账号设置默认值 1101:个人银行
  cst_acc.MOBILE
from PERBANK_DINGYE.t_CUSNT_ACCT cst_acc , COMM_DINGYE.t_native_bank nv_bank
where cst_acc.native_bank = nv_bank.zfhhh(+);
end;
/
