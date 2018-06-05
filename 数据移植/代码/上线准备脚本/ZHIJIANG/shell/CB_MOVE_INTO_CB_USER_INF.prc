create or replace procedure CB_MOVE_INTO_CB_USER_INF
AS  --迁移新大陆 企业银行企业会员用户信息
begin
insert into CB_USER_INF
  (UIF_CSTNO,
   UIF_USERNO,
   UIF_USERNAME,
   UIF_DEPARTMENT,
   UIF_JOBTITLE,
   UIF_MOBILE,
   UIF_EMAIL,
   UIF_RIGHT,
   UIF_STT,
   UIF_SEX,
   UIF_PHONE,
   UIF_CHANNALCHARPWD,
   UIF_CTFTYP,
   UIF_CTFNO,
   UIF_LOGONTYPE,
   UIF_AUTHLVL,
   UIF_CHANNELCHARID,
   UIF_FIRSTLOGON)
  select substr(NCID,2) as NCID,
         substr("OID",3) as OID,
         OPER_NAME,
         DEPARTMENT,
         POSITION,
         nvl(MOBILE, PHONE) as MOBILE,
         EMAIL,
         '00000' as OPER_TYPE, --初始化时全部不分配权限，在企业会员认证签约存储过程CB_MOVE_INTO_CB_CERT_INF中进行设置
         (case OPER_STATUS
           when '1' then
            '0'
           when '3' then
            '2'
          end) as OPER_STATUS, --已过滤掉删除和等待授权状态数据。 需向神码人员确认
         GENDER,
         nvl(PHONE,MOBILE) as PHONE,
         "PASSWORD",
         (case
           when ID_TYPE = '0' then
            '0'
           when  ID_TYPE = '2' then
            '1'
           when  ID_TYPE = '3' then
            '2'
           when  ID_TYPE = '1' then
            '3'
           when  ID_TYPE = '7' then
            '4'
           when  ID_TYPE = '5' then
            '5'
           when  ID_TYPE = '4' then
            '9'
           when ID_TYPE = 'X' then
            'X'
         end) ID_TYPE,
         ID_NO,
          '1' as LOGONTYPE, --登录类型，设置为1：使用证书
          '0' as AUTHLVL, --结转源数据操作员权限为授权是设置授权级别为1,否则为0;初始化时全部不分配权限，在企业会员认证签约存储过程CB_MOVE_INTO_CB_CERT_INF中进行设置
          '1103' as CHANNELCHARID,   --字符渠道ID,设置为：1103 企业银行
          '0' as UIF_FIRSTLOGON --迁移用户首次登录:3
    from FIRMBANK_ZHIJIANG.t_operator
   where OPER_STATUS in('1', '3'); --只查询正常状态和临时冻结状态数据，滤掉已删除状态、等待授权状态数据
end;
/
