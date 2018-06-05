create or replace procedure CB_MOVE_INTO_CB_CST_NODE
AS  --迁移新大陆 企业银行 企业会员开户网点表
begin
 insert into CB_CST_NODE(
   CND_CSTNO,
   CND_OPENNODE
 )
 select substr(ncid,2) as ncid, CTRL_BRANCH
 from (SELECT firm.*, clt.CTRL_BRANCH FROM FIRMBANK_DINGYE.t_FIRM firm, fm_client clt
        WHERE firm.NCID = clt.CLIENT_NO(+) and
              firm_status != '0' --过滤掉已注销客户
       )
 WHERE CTRL_BRANCH IS NOT NULL;
end;
/
