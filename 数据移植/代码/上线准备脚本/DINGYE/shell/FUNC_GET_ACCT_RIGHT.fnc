CREATE OR REPLACE FUNCTION FUNC_GET_ACCT_RIGHT
(PARAM_ACCTNO IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_ACCT_RIGHT
-- 说明：移植数据获取企业账户用户权限设置
--
-- 输入参数：
-- PARAM_ACCTNO ： 账户ID
 

-- 输出：
-- 账户权限

-- 最后修改人 ： gedw
-- 最后修改日期：2017.7.13
------------------------------------------------------------------------
 v_result    VARCHAR2 (10);
 v_biz_code  varchar2(128);
BEGIN
 --默认设置查询权限
 v_result := '10000';
 begin
  select to_char(wm_concat(biz.biz_code)) as biz_code into v_biz_code
  from firmbank_dingye.t_contract ct, 
       firmbank_dingye.t_contr_acct_biz biz
  where ct.id_contract = biz.id_contract
   and contr_status = '0' --查询正常状态数据
   and acct_id = PARAM_ACCTNO
  group by ct.acct_id;
  exception
  when no_data_found then
    v_result := '10000';
 end;
 
 --含有转账权限场合
 if instr(v_biz_code, 'TRANS') > 0 or instr(v_biz_code, 'CASHPAY') > 0 then
    v_result := REGEXP_REPLACE(v_result, '0', '1', 2, 1 );
 end if;
 
 
  --含有代发代扣权限场合

 if  instr(v_biz_code, 'PAYOFF') > 0 then
    v_result := REGEXP_REPLACE(v_result, '0', '1', 3, 1 );
 end if;
 
return v_result;
END FUNC_GET_ACCT_RIGHT;
/
