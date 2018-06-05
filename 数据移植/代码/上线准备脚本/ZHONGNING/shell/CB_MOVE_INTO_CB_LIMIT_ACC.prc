CREATE OR REPLACE PROCEDURE CB_MOVE_INTO_CB_LIMIT_ACC is
-- 初始化企业银行 企业会员账户额度控制信息
begin
   insert into CB_LIMIT_ACC(
    LIA_CSTNO,
    LIA_ACCNO,
    LIA_SINGLEMAX,
    LIA_DAYMAX,
    LIA_DAYSUM,
    LIA_LASTDATE
   )
   select substr(acc.ncid,2) as ncid,
          acc.acct_id,
          (case
             when ctr.id_contract is null
             then
               0
              else
              ctr.deal_limited_amt
           end) as deal_limited_amt,
          (case
             when ctr.id_contract is null
             then
               0
              else
              ctr.day_limited_amt
           end) as day_limited_amt,
          0,
          to_char(sysdate, 'yyyymmdd') as LASTDATE
      from FIRMBANK_ZHONGNING.t_account acc,
          (select * from
           FIRMBANK_ZHONGNING.T_CONTRACT
           where contr_status = '0' --查询正常状态数据
             and acct_id is not null
          ) ctr
   where acc.acct_id = ctr.acct_id(+) and
         ACCT_STATUS = '1'; --只查询正常状态账户数据
end;
/
