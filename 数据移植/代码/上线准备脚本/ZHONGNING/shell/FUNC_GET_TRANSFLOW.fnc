CREATE OR REPLACE FUNCTION FUNC_GET_TRANSFLOW(PARAM_CSTNO    IN VARCHAR2,
                                              PARAM_CERT_NUM IN VARCHAR2)
  RETURN VARCHAR2 IS
  ------------------------------------------------------------------------
  -- FUNCTION :FUNC_GET_TRANSFLOW
  -- 说明：获取企业授权模式步骤
  --
  -- 输入参数：
  -- PARAM_CSTNO ： 企业客户号
  -- 输出：1:一步 2:两步(录入、授权) 3:三步(录入、复核、授权)

  -- 最后修改人 ： gedw
  -- 最后修改日期：2017.05.03
  ------------------------------------------------------------------------
  v_result     INTEGER; --返回结果
  v_flow_mode  VARCHAR2(32); --授权步骤
  v_flow_roles VARCHAR2(32); --任意步模式步骤明细
  v_op_num INTEGER;
BEGIN
  v_result     := 0;
  v_flow_mode  := '';
  v_flow_roles := '';
  v_op_num := 0;
  --查询复核人员人数
    select count(auth.oid) as op_num into v_op_num
    from FIRMBANK_ZHONGNING.t_auth auth,
         FIRMBANK_ZHONGNING.t_auth_role rl
    where auth.id_auth = rl.id_auth
      and auth.auth_status = '1'
      and substr(auth.ncid, 2) = PARAM_CSTNO
      and rl.role_id = 'CHECKER';

    IF v_op_num > 0 AND PARAM_CERT_NUM >=3 THEN
      v_result := 3;
    END IF;

    --查询授权人员人数
    select count(auth.oid) as op_num into v_op_num
    from FIRMBANK_ZHONGNING.t_auth auth,
         FIRMBANK_ZHONGNING.t_auth_role rl
    where auth.id_auth = rl.id_auth
      and auth.auth_status = '1'
      and substr(auth.ncid, 2) = PARAM_CSTNO
      and rl.role_id = 'GRANTOR';

    IF v_op_num > 0 AND PARAM_CERT_NUM >=2 AND v_result != 3 THEN
      v_result := 2;
    END IF;

    --查询录入人员人数
    select count(auth.oid) as op_num into v_op_num
    from FIRMBANK_ZHONGNING.t_auth auth,
         FIRMBANK_ZHONGNING.t_auth_role rl
    where auth.id_auth = rl.id_auth
      and auth.auth_status = '1'
      and substr(auth.ncid, 2) = PARAM_CSTNO
      and rl.role_id = 'SUBMITOR';

    IF v_op_num > 0 AND PARAM_CERT_NUM >=1 AND v_result != 3 AND v_result != 2 THEN
      v_result := 1;
    END IF;

  --授权模式含义三步模式场合
  IF instr(v_flow_mode, 'TRI_STEP') > 0 THEN
    --判断拥有证书个数,证书大于三个场合
    IF PARAM_CERT_NUM >= 3 THEN   --三步
       v_result := 3;
    ELSIF PARAM_CERT_NUM = 2 THEN  --两步
       v_result := 2;
    ELSIF PARAM_CERT_NUM = 1 THEN  --一步
       v_result := 1;
    END IF;
  END IF;

  --授权模式含义两步模式场合同时已计算出不包含三步和两步模式
  IF instr(v_flow_mode, 'TWO_STEP') > 0 AND v_result != 3 AND v_result != 2 THEN
    --判断拥有证书个数,证书大于2个场合
    IF PARAM_CERT_NUM >= 2 THEN   --两步
       v_result := 2;
    ELSIF PARAM_CERT_NUM = 2 THEN --一步
       v_result := 1;
    END IF;
  END IF;

  --授权模式含任意步模式场合同时已计算出不包含三步模式
  IF instr(v_flow_mode, 'ANY_STEP') > 0 AND v_result != 3 THEN
             --含复核角色场合
             IF instr(v_flow_roles, 'CHECKER') > 0 THEN
                --判断拥有证书个数,证书大于三个场合
                IF PARAM_CERT_NUM >= 3 THEN   --三步
                   v_result := 3;
                ELSIF PARAM_CERT_NUM = 2 THEN  --两步
                   v_result := 2;
                ELSIF PARAM_CERT_NUM = 1 THEN  --一步
                   v_result := 1;
                END IF;
             END IF;


             --含授权角色场合同时已计算出不包三步和两步模式
             IF instr(v_flow_roles, 'GRANTOR') > 0 AND v_result != 3 AND v_result != 2 THEN
                --判断拥有证书个数,证书大于三个场合
                IF PARAM_CERT_NUM >= 2 THEN   --两步
                   v_result := 2;
                ELSIF PARAM_CERT_NUM = 1 THEN  --一步
                   v_result := 1;
                END IF;
             END IF;

             --含录入角色场合同时已计算出不包三步和两步和一步模式
             IF instr(v_flow_roles, 'SUBMITOR') > 0 AND v_result != 3 AND v_result != 2 AND v_result != 1 THEN
                --判断拥有证书个数,证书大于三个场合
                IF PARAM_CERT_NUM >= 1 THEN   --一步
                   v_result := 1;
                END IF;
             END IF;
   END IF;
  --授权模式含一步模式场合同时已计算出不包含三步和两步和一步模式
  IF instr(v_flow_mode, 'ONE_STEP') > 0 AND v_result != 3 AND v_result != 2 AND v_result != 1 THEN
    --判断拥有证书个数,证书大于2个场合
    IF PARAM_CERT_NUM >= 1 THEN --一步
       v_result := 1;
    END IF;
  END IF;

  return v_result;
END FUNC_GET_TRANSFLOW;
/
