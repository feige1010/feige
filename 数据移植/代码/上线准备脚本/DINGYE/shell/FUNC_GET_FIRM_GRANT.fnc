CREATE OR REPLACE FUNCTION FUNC_GET_FIRM_GRANT
(PARAM_CSTNO IN VARCHAR2)
RETURN VARCHAR2
IS
------------------------------------------------------------------------
-- FUNCTION :FUNC_GET_USER_RIGHT
-- 说明：获取移植原数据企业授权步骤
--
-- 输入参数：
-- PARAM_CSTNO ： 企业客户号
-- 输出：0：含有录入 1：含有授权 2：含有复核


-- 最后修改人 ： gedw
-- 最后修改日期：2016.12.30
------------------------------------------------------------------------
 v_result   integer (1);
BEGIN
  v_result := -1;
 FOR bizflow IN(select cfg.ncid,
                       to_char(wm_concat(cfg.biz_flow_mode)) as biz_flow_mode,
                       to_char(wm_concat(cfg.flow_roles)) as flow_roles
                  from FIRMBANK_DINGYE.t_bizflow_cfg cfg
                 where cfg_status in ('1') -- 查询激活状态数据
                   and biz_flow_mode is not null
                   and ncid = PARAM_CSTNO
                 group by ncid)
  LOOP
     --含有三步模式
     IF INSTR(bizflow.biz_flow_mode, 'TRI_STEP') > 0 THEN
       v_result := 2;
     END IF;
     --含有两步模式
     IF v_result < 1  AND INSTR(bizflow.biz_flow_mode, 'TWO_STEP') > 0 THEN
        v_result := 1;
     END IF;
     --含有一步步模式
     IF v_result < 0 AND INSTR(bizflow.biz_flow_mode, 'ONE_STEP') > 0 THEN
        v_result := 0;
     END IF;
     --含有任意模式且不含有三步模式场合
     IF v_result < 2 AND INSTR(bizflow.biz_flow_mode, 'ANY_STEP') > 0 THEN
       IF INSTR(bizflow.flow_roles, 'CHECKER') > 0 THEN
           v_result := 2;
       END IF;
       
       IF v_result < 1 AND INSTR(bizflow.flow_roles, 'GRANTOR') > 0 THEN
          v_result := 1;
       END IF;
       
       IF v_result < 0 AND INSTR(bizflow.flow_roles, 'SUBMITOR') > 0 THEN
          v_result := 0;
       END IF;
     END IF;
  END LOOP;
return v_result;
END FUNC_GET_FIRM_GRANT;
/
