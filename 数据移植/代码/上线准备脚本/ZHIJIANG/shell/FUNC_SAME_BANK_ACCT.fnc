create or replace function FUNC_SAME_BANK_ACCT(PARAM_ACCT_NO in VARCHAR2) return varchar2
is
------------------------------------------------------------------------
-- FUNCTION :FUNC_SAME_BANK_ACCT
-- 说明：通过查询神州数码核心系统表确认传入账户号是否为自己行账户
-- 输入参数：
-- PARAM_ACCT_NO ： 账户号

-- 输出：v_result
-- 否本行账户标识 1:是 0:否

-- 最后修改人 ： gedw
-- 最后修改日期：2016.10.27
------------------------------------------------------------------------
  v_result varchar2(50);
  v_count INTEGER;

begin
    --初始化返回标识为否
  v_result := '0';
  v_count := 0;

  select count(*) into v_count from cd_card_mainacc where card_no = PARAM_ACCT_NO;
  --卡表中存在场合
  if v_count > 0 then
      v_result := '1';
  else
    select count(*) into v_count from rb_acct t where t.base_acct_no = PARAM_ACCT_NO;
    --卡表中不存在，账户表中存在场合
    if v_count > 0  then
      v_result := '1';
    end if;
  end if;
  return v_result;
end FUNC_SAME_BANK_ACCT;
/
