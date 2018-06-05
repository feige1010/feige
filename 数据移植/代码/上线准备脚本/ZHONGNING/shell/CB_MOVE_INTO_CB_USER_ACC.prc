create or replace procedure CB_MOVE_INTO_CB_USER_ACC
AS  --迁移新大陆 企业银行 企业会员用户下挂账户信息
begin
 insert into CB_USER_ACC(
      UAC_USERID,
      UAC_ACCNO,
      UAC_ACCALIAS
 )
 select distinct (substr(op.ncid,2) || substr(op.oid, 3)) as userId,
        acc.acct_id,
        (case
          when lengthb(acc.alias) < = 50 then
           acc.alias
          else
           null
        end) as alias --新网银账号别名字段长度为50字符，大于50字符的数据设置为null
   from FIRMBANK_ZHONGNING.t_account acc, FIRMBANK_ZHONGNING.t_operator op,
       (select distinct auth.oid, auth_acc.acct_id
         from  FIRMBANK_ZHONGNING.t_auth auth, FIRMBANK_ZHONGNING.t_auth_account auth_acc
        where  auth.id_auth = auth_acc.id_auth
          and auth.auth_status = '1') cst_ACC --操作员和账号关联关系
  where acc.ncid = op.ncid and
        op.oid = cst_ACC.oid and
        ACCT_STATUS = '1' and         --只查询正常状态账户数据
        OPER_STATUS in ('1', '3')    --只查询正常状态和临时冻结状态数据，滤掉已删除状态、等待授权状态数据
  union
   select distinct (substr(op.ncid,2) || substr(op.oid, 3)) as userId,
          acc.acct_id,
          (case
          when length(acc.alias) < = 50 then
           acc.alias
          else
           null
        end) as alias --新网银账号别名字段长度为50字符，大于50字符的数据设置为null
   from FIRMBANK_ZHONGNING.t_operator op,
        FIRMBANK_ZHONGNING.t_account acc
   where op.ncid = acc.ncid
     and OPER_STATUS in('1', '3')
     and OPER_TYPE in('0', '1'); --查询系统主管，系统管理员
end;
/
