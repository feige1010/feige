create or replace function FUNC_FORMATE_CERTINFO_UPPER(certInfo in varchar2)
  return varchar2 is
------------------------------------------------------------------------
-- FUNCTION :FUNC_FORMATE_CERTINFO_UPPER
-- 说明：格式化证书信息字符串
--  将输入参数关键字cn= ,ou=,o=,c=格式化为CN = ,OU = , O = , C =
-- 输入参数：
-- certInfo ： 证书信息字符串

-- 输出：
-- 格式化后的证书信息字符串

-- 最后修改人 ： gedw
-- 最后修改日期：2016.10.26
------------------------------------------------------------------------
 v_result varchar2(200);
begin
  v_result := replace(certInfo, 'cn=', 'CN=');
  v_result := replace(v_result, 'ou=', 'OU=');
  v_result := replace(v_result, 'o=', 'O=');
  v_result := replace(v_result, 'c=cn', 'C=CN');
  return v_result;
end FUNC_FORMATE_CERTINFO_UPPER;
/
