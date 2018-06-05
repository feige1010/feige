CREATE OR REPLACE FUNCTION "FUNC_GET_CURRENT_RATE"(
		param_type   	IN       VARCHAR2
	)
	RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_DATE_FORMAT
-- 说明：迁移数据使用 根据输入存款类型获取当前利率
--
-- 输入参数：
-- param_type ： 存款类型

--Y02	二年
--Y05	五年
--Y03	三年
--Y01	一年
--M06	6个月
--M03	3个月
--D01 一天通知
--D07 七天通知

-- 输出： 利率

-- 最后修改人 ： gedw
-- 最后修改日期：2016.11.14
------------------------------------------------------------------------
  v_result   VARCHAR2 (14);
BEGIN
  IF param_type = 'D01' THEN
    select TO_CHAR(ACTUAL_RATE, '90.999') into v_result from eb_int_rate where PROD_TYPE = 'TZ1';
  ELSIF param_type = 'D07' THEN
    select TO_CHAR(ACTUAL_RATE, '90.999') into v_result from eb_int_rate where PROD_TYPE = 'TZ7';
  ELSE
    select TO_CHAR(ACTUAL_RATE, '90.999') into v_result from eb_int_rate where PROD_TYPE = param_type;
  END IF;
  RETURN v_result;
END FUNC_GET_CURRENT_RATE;
/
