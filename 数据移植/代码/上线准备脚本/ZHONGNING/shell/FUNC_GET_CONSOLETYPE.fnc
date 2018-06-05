CREATE OR REPLACE FUNCTION FUNC_GET_CONSOLETYPE
(PARAM_CSTNO IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_CONSOLETYPE
-- 说明：移植数据获取企业管理台设置模式
-- 输入参数：
-- PARAM_CSTNO ： 企业客户号
-- 输出：0-单人模式（不需授权） 1-双人模式（互为授权）
-- 最后修改人 ： gedw
-- 最后修改日期：2016.12.09
------------------------------------------------------------------------
 v_result varchar(1); --返回值
 v_admin_num integer; --管理角色人员个数
BEGIN

 v_result := '0';
 v_admin_num := 0;
 select count(usr.uif_userno) into v_admin_num
 from cb_user_inf usr
 where usr.uif_cstno = PARAM_CSTNO
 and  substr(usr.uif_right, 4, 1) = '1';

 --如果管理角色人员个数大于1则为双人模式
 IF v_admin_num > 1 THEN
    v_result := '1';
 END IF;

return v_result;
END FUNC_GET_CONSOLETYPE;
/
