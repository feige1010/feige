create or replace procedure CB_MOVE_INTO_CB_USER_BSN
AS  --迁移新大陆 企业银行 企业操作员开通交易
begin
insert into CB_USER_BSN(

  UBN_USERID,
  UBN_BSNCODE
)
select * from
 (
  SELECT (usr.uif_cstno || usr.uif_userno) as userid
  FROM
  cb_user_inf usr
  where substr(usr.uif_right, 1, 1) = 1 and usr.uif_cstno not like 'CB%'
 )
 cross join
 (
   select bdf_bsncode
    from CB_BSNDEF
   where bdf_bsncode in ('10100000', --本行账户查询
                         '10100200', --网银交易流水查询
                         '10100700', --贷款查询
                         '10100300', --电子回单查询
                         '10200000', --行内转账
                         '10200001', --行内同名转账
                         '10200100', --行内批量转账
                         '10200200', --行内批量转账查询
                         '10200300', --跨行转账
                         '10200400', --交易查询与维护
                         '10300000', --代发业务
                         '10300100', --代发查询
                         '10200900', --预约管理
                         '10000700', --银行公告
                         '10500004', --账户额度查询
                         '10000300', --用户信息查询
                         '99992000', --操作日志查询
                         '10500204', --转账模板维护
                         '10200800', --转账用途维护
                         '10500003', --账户别名设置
                         '10500006', --常用功能设置
                         '10200500', --收款人名册维护
                         '10500203', --用户登录首页设置
                         '10500005', --账户显示顺序设置
                          '13000101', --活期转定期
                          '13000102', --定期转活期
                          '13000103', --定活互转交易查询与维护
                          '13000201', --通知存款开立
                          '13000204', --通知存款立即支取
                          '13000205', --通知存款交易查询与维护
                          '12000110', --余额对账
                          '12000120', --明细对账
                          '12000130' --交易查询与维护
                         )
  )
  union
  select * from
 (
    SELECT (usr.uif_cstno || usr.uif_userno) as userid
    FROM
    cb_user_inf usr
    where  usr.uif_right != '00000' and
           usr.uif_cstno not like 'CB%' and
           (substr(usr.uif_right, 2, 1) = '1' or substr(usr.uif_right, 3, 1) = '1') --具有授权或复核权限场合
 )
 cross join
 (
   select bdf_bsncode
    from CB_BSNDEF
   where bdf_bsncode in (
                          '10100000', --本行账户查询
                          '10100200', --网银交易流水查询
                          '10100700', --贷款查询
                          '10100300', --电子回单查询
                          '10200000', --行内转账
                          '10200001', --行内同名转账
                          '10200100', --行内批量转账
                          '10200200', --行内批量转账查询
                          '10200300', --跨行转账
                          '10200400', --交易查询与维护
                          '10300000', --代发业务
                          '10300100', --代发查询
                          '10200900', --预约管理
                          '10000700', --银行公告
                          '10500004', --账户额度查询
                          '10000300', --用户信息查询
                          '99992000', --操作日志查询
                          --'10500204', --转账模板维护
                          --'10200800', --转账用途维护
                          '10500003', --账户别名设置
                          '10500006', --常用功能设置
                          --'10200500', --收款人名册维护
                          '10500203', --用户登录首页设置
                          '10500005', --账户显示顺序设置
                          '13000101', --活期转定期
                          '13000102', --定期转活期
                          '13000103', --定活互转交易查询与维护
                          '13000201', --通知存款开立
                          '13000204', --通知存款立即支取
                          '13000205', --通知存款交易查询与维护
                          '12000110', --余额对账
                          '12000120', --明细对账
                          '12000130' --交易查询与维护
                         )
)
union
select * from
 (
    SELECT (usr.uif_cstno || usr.uif_userno) as userid
    FROM
    cb_user_inf usr
    where  usr.uif_right != '00000' and
           usr.uif_cstno not like 'CB%' and
           (substr(usr.uif_right, 1, 1) != '1' and
            substr(usr.uif_right, 2, 1) != '1' and
            substr(usr.uif_right, 3, 1) != '1') and --不具有录入、授权、复核权限场合
           substr(usr.uif_right, 4, 1) = '1'
 )
 cross join
 (
   select bdf_bsncode
    from CB_BSNDEF
   where bdf_bsncode in (
                          '10100000', --本行账户查询
                          '10100700', --贷款查询
                          '10100300', --电子回单查询
                          '10000700', --银行公告
                          '10500004', --账户额度查询
                          '10000300', --用户信息查询
                          '99992000', --操作日志查询
                          '10500003', --账户别名设置
                          '10500006', --常用功能设置
                          '10500203', --用户登录首页设置
                          '10500005' --账户显示顺序设置
                         )
);
end;
/
