create or replace function FUNC_CHECK_CARDFLG(PARAM_ACCT_NO in VARCHAR2) return varchar2
is
------------------------------------------------------------------------
-- FUNCTION :FUNC_CHECK_CARDFLG
-- 说明：判断账号卡折标志
-- 输入参数：
-- PARAM_ACCT_NO ： 账户号

-- 输出：v_result
-- 否本行账户标识 01:卡 02:折

-- 最后修改人 ： gedw
-- 最后修改日期：2016.11.17
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
     v_result := '01';
  else
     v_result := '02';
  end if;
  return v_result;
end FUNC_CHECK_CARDFLG;
/
