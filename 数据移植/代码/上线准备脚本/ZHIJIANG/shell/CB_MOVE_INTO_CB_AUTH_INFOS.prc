create or replace procedure CB_MOVE_INTO_CB_AUTH_INFOS
AS  --迁移新大陆 企业银行授权模式信息
begin
 --企业授权模式定义表,企业转账授权
 insert into cb_auth_def
  (ADF_ID,
   ADF_ALIAS,
   ADF_CSTNO,
   ADF_AREATYPE,
   ADF_AUTHTYPE,
   ADF_CHECKTYPE,
   ADF_SENDTYPE)
  select substr(NCID, 2) as NCID,
         (case
           when biz_flow_mode = 'ONE_STEP' then
            '转账一步模式'
           when  biz_flow_mode = 'TWO_STEP' then
            '转账两步模式'
           when biz_flow_mode = 'TRI_STEP' then --三步模式，根据已移植企业用户是否有复核权限确认是两步还是三步
             (case
                 when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '转账三步模式'
              else
                '转账两步模式'
              end)
           when biz_flow_mode = 'ANY_STEP' then --任意步模式含有复核或授权步骤对应到两步模式
             (case
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '转账三步模式'
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'GRANTOR') > 0 then
                '转账两步模式'
                 else
                '转账一步模式'
              end)
         end) as ALIAS,
         substr(NCID, 2) as NCID,
         '0',
         '0',
         (case
           when biz_flow_mode = 'ONE_STEP' then
            '0'
           when  biz_flow_mode = 'TWO_STEP' then
            '0'
           when biz_flow_mode = 'TRI_STEP' then --三步模式，根据已移植企业用户是否有复核权限确认是两步还是三步
             (case
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '1'
             else
                '0'
             end)
           when biz_flow_mode = 'ANY_STEP' then --任意步模式含有复核或授权步骤对应到两步模式
             (case
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '1'
             else
                '0'
             end)
         end) as CHECKTYPE,
         '0'
   from
     FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
   where cfg_status in ('1')  -- 查询激活状态数据
     and BIZ_TYPE = 'GENERAL' -- 查询企业转账授权
     and biz_flow_mode is not null;

  --企业授权模式定义表,企业理财授权
  insert into cb_auth_def
  (ADF_ID,
   ADF_ALIAS,
   ADF_CSTNO,
   ADF_AREATYPE,
   ADF_AUTHTYPE,
   ADF_CHECKTYPE,
   ADF_SENDTYPE)
   select '01' || substr(NCID, 4) as NCID,
       (case
           when biz_flow_mode = 'ONE_STEP' then
            '理财一步模式'
           when  biz_flow_mode = 'TWO_STEP' then
            '理财两步模式'
           when biz_flow_mode = 'TRI_STEP' then --三步模式，根据已移植企业用户是否有复核权限确认是两步还是三步
             (case
                 when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '理财三步模式'
              else
                '理财两步模式'
              end)
           when biz_flow_mode = 'ANY_STEP' then --任意步模式含有复核或授权步骤对应到两步模式
             (case
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '理财三步模式'
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'GRANTOR') > 0 then
                '理财两步模式'
                 else
                '理财一步模式'
              end)
         end) as ALIAS,
         substr(NCID, 2) as NCID,
         '0',
         '0',
         (case
           when biz_flow_mode = 'ONE_STEP' then
            '0'
           when  biz_flow_mode = 'TWO_STEP' then
            '0'
           when biz_flow_mode = 'TRI_STEP' then --三步模式，根据已移植企业用户是否有复核权限确认是两步还是三步
             (case
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '1'
             else
                '0'
             end)
           when biz_flow_mode = 'ANY_STEP' then --任意步模式含有复核或授权步骤对应到两步模式
             (case
                when FUNC_CHECK_FIRM_USER(cfg.ncid, 'CHECKER') > 0 then --移植后含有复核角色用户
                '1'
             else
                '0'
             end)
         end) as CHECKTYPE,
         '0'
   from
     FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
   where cfg_status in ('1')  -- 查询激活状态数据
     and BIZ_TYPE = 'FINANCING' -- 查询企业理财授权
     and biz_flow_mode is not null;


  --企业授权模式定义表,企业余额对账授权模式
  insert into cb_auth_def
  (ADF_ID,
   ADF_ALIAS,
   ADF_CSTNO,
   ADF_AREATYPE,
   ADF_AUTHTYPE,
   ADF_CHECKTYPE,
   ADF_SENDTYPE)
   select '011' || substr(NCID, 5) as NCID,
         '余额对账一步模式' as ALIAS,
         substr(NCID, 2) as NCID,
         '0',
         '0',
         '0' as CHECKTYPE,
         '0'
   from FIRMBANK_ZHIJIANG.t_firm firm
   where firm_status != '0';


     --企业授权金额区间表，企业转账授权
     insert into CB_AUTH_AREA(
        AAR_ID,
        AAR_NO,
        AAR_START,
        AAR_END,
        AAR_AUTHDEF
     )
     select substr(cfg.ncid, 2) as NCID,
            '1',
            0.00,
            1000000000000000.00,
           (case
             when biz_flow_mode = 'ONE_STEP' then
              '00000'
             when biz_flow_mode = 'TWO_STEP' then
              '10000'
             when biz_flow_mode = 'TRI_STEP' then
              '10000'
             when biz_flow_mode = 'ANY_STEP' then
               (case
                  when FUNC_CHECK_FIRM_USER(cfg.ncid, 'GENERAL') > 0 then --移植后含有授权角色用户
                  '10000'
                else
                  '00000'
                end)
             end) as AUTHDEF
     from FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
     where cfg_status in ('1')  -- 查询激活状态数据
       and BIZ_TYPE = 'GENERAL' -- 查询企业转账授权
       and biz_flow_mode is not null; --过滤授权模式为空的数据

   --企业授权金额区间表，企业理财授权
     insert into CB_AUTH_AREA(
        AAR_ID,
        AAR_NO,
        AAR_START,
        AAR_END,
        AAR_AUTHDEF
     )
     select '01' || substr(cfg.ncid, 4) as NCID,
            '1',
            0.00,
            1000000000000000.00,
           (case
             when biz_flow_mode = 'ONE_STEP' then
              '00000'
             when biz_flow_mode = 'TWO_STEP' then
              '10000'
             when biz_flow_mode = 'TRI_STEP' then
              '10000'
             when biz_flow_mode = 'ANY_STEP' then --任意步模式含有复核或授权步骤对应到两步模式
               (case
                  when FUNC_CHECK_FIRM_USER(cfg.ncid, 'GENERAL') > 0 then --移植后含有授权角色用户
                  '10000'
                else
                  '00000'
                end)
           end) as AUTHDEF
     from FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
     where cfg_status in ('1')  -- 查询激活状态数据
       and BIZ_TYPE = 'FINANCING' -- 查询企业理财授权
       and biz_flow_mode is not null;

   --企业授权金额区间表，企业余额对账
     insert into CB_AUTH_AREA(
        AAR_ID,
        AAR_NO,
        AAR_START,
        AAR_END,
        AAR_AUTHDEF
     )
     select '011' || substr(firm.ncid, 5) as NCID,
            '1',
            0.00,
            1000000000000000.00,
           '00000' as AUTHDEF
     from FIRMBANK_ZHIJIANG.t_firm firm
     where firm_status != '0';

 --企业客户开通交易表(CB_CST_BSN)
 insert into  CB_CST_BSN(
              CBN_CSTNO,
              CBN_BSNCODE)
 select t_cst.ncid,
        t_bsn.bdf_bsncode
 from
  (select substr(ncid,2) as ncid
   from FIRMBANK_ZHIJIANG.t_firm
   where firm_status != '0') t_cst --过滤掉已注销客户
  cross join
  (select bdf_bsncode
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
                        -- '00100400', --站内邮件
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
                          --'13000202', --通知存款预约支取
                          --'13000203', --通知存款取消预约
                          '13000204', --通知存款立即支取
                          '13000205', --通知存款交易查询与维护
                          '12000110', --余额对账
                          '12000120', --明细对账
                          '12000130' --交易查询与维护

                         )) t_bsn;

  --企业授权模式关联表，转账交易设置模式(CB_AUTH_REF)
  insert into CB_AUTH_REF(
   arf_cstno,
   arf_bsncode,
   arf_crytype,
   arf_id
  )
  select t_cst.ncid,
         t_bsn.bdf_bsncode,
         '01',
         t_cst.ncid as arf_id
  from
   (select substr(firm.ncid,2) as ncid
    from FIRMBANK_ZHIJIANG.t_firm firm, FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
    where firm.ncid = cfg.ncid and firm_status != '0' and
          cfg.BIZ_TYPE = 'GENERAL' and -- 查询企业理财授权
          cfg_status in ('1') and
          biz_flow_mode is not null
   ) t_cst --过滤掉已注销客户
   cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
    )) t_bsn;

  --企业授权模式关联表，理财交易设置模式(CB_AUTH_REF)
  insert into CB_AUTH_REF(
   arf_cstno,
   arf_bsncode,
   arf_crytype,
   arf_id
  )
  select t_cst.ncid,
         t_bsn.bdf_bsncode,
         '01',
         '01' || substr(t_cst.ncid,3)  as arf_id
  from
   (select substr(firm.ncid,2) as ncid
    from FIRMBANK_ZHIJIANG.t_firm firm, FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
    where firm.ncid = cfg.ncid and firm_status != '0' and
          cfg.BIZ_TYPE = 'FINANCING' and -- 查询企业理财授权
          cfg_status in ('1') and
          biz_flow_mode is not null
   ) t_cst --过滤掉已注销客户
   cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
    )) t_bsn;

  insert into CB_AUTH_REF(
   arf_cstno,
   arf_bsncode,
   arf_crytype,
   arf_id
  )
  select t_cst.ncid,
         t_bsn.bdf_bsncode,
         '01',
         '011' || substr(t_cst.ncid,4)  as arf_id
  from
   (select substr(firm.ncid,2) as ncid
     from FIRMBANK_ZHIJIANG.t_firm firm
     where firm_status != '0'
   ) t_cst --过滤掉已注销客户
   cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '12000110' --余额对账
    )) t_bsn;
commit;

-----新增授权模式
insert into cb_auth_def
  (ADF_ID,
   ADF_ALIAS,
   ADF_CSTNO,
   ADF_AREATYPE,
   ADF_AUTHTYPE,
   ADF_CHECKTYPE,
   ADF_SENDTYPE,
   ADF_STT)
--有授权角色、无理财、无转账
SELECT distinct cif_cstno AS ADF_ID,
                '转账两步模式' AS ADF_ALIAS,
                cif_cstno AS ADF_CSTNO,
                '0',
                '0',
                '0',
                '0',
                null
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst ,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
union
---有授权角色、无理财、无转账
SELECT distinct ('01' || substr(cif_cstno, 3)) AS ADF_ID,
                '理财两步模式' AS ADF_ALIAS,
                cif_cstno AS ADF_CSTNO,
                '0',
                '0',
                '0',
                '0',
                null
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst ,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
union
--有授权角色、无理财、有转账
SELECT  distinct ('01' || substr(cif_cstno, 3)) AS ADF_ID,
                '理财两步模式' AS ADF_ALIAS,
                cif_cstno AS ADF_CSTNO,
                '0',
                '0',
                '0',
                '0',
                null
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NOT NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
   AND cif_cstno IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
     ))
   AND cif_cstno NOT IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
     '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
     ))
union
--有授权角色、有理财、无转账
SELECT  distinct cif_cstno AS ADF_ID,
                '转账两步模式' AS ADF_ALIAS,
                cif_cstno AS ADF_CSTNO,
                '0',
                '0',
                '0',
                '0',
                null
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NOT NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
   AND cif_cstno IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
     ))
   AND cif_cstno NOT IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
     ));


------企业授权金额区间表，企业转账授权
insert into CB_AUTH_AREA(
    AAR_ID,
    AAR_NO,
    AAR_START,
    AAR_END,
    AAR_AUTHDEF
  )
--有授权角色、无理财、无转账
SELECT distinct cif_cstno,
            '1',
            0.00,
            1000000000000000.00,
            '10000'
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst ,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
UNION
----有授权角色、无理财、无转账
SELECT distinct  ('01' || substr(cif_cstno, 3)),
            '1',
            0.00,
            1000000000000000.00,
            '10000'
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst ,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
UNION
--有授权角色、无理财、有转账
SELECT distinct ('01' || substr(cif_cstno, 3)),
        '1',
        0.00,
        1000000000000000.00,
        '10000'
 FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NOT NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
   AND cif_cstno IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
     ))
   AND cif_cstno NOT IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
     '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
     ))
UNION
--有授权角色、有理财、无转账
SELECT distinct cif_cstno,
            '1',
            0.00,
            1000000000000000.00,
            '10000'
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NOT NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
   AND cif_cstno IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
     ))
   AND cif_cstno NOT IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
     ));

 -------------------------------------------------------------
 --企业授权模式关联表
  insert into CB_AUTH_REF(
   arf_cstno,
   arf_bsncode,
   arf_crytype,
   arf_id
  )
--有授权角色、无理财、无转账
SELECT
 cif_cstno,
 t_bsn.bdf_bsncode,
 '01',
 cif_cstno as arf_id
FROM
(SELECT distinct cif_cstno
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst ,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1'))
 cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
    )) t_bsn
UNION
SELECT
 cif_cstno,
 t_bsn.bdf_bsncode,
 '01',
 ('01' || substr(cif_cstno, 3))  as arf_id
FROM
(SELECT distinct cif_cstno
  FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst ,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1'))
cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
    )) t_bsn
UNION
--有授权角色、有理财、无转账
SELECT
 cif_cstno,
 t_bsn.bdf_bsncode,
 '01',
 cif_cstno as arf_id
FROM
(SELECT distinct cif_cstno
    FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NOT NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
   AND cif_cstno IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
     ))
   AND cif_cstno NOT IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
     )))
 cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
    )) t_bsn
UNION
SELECT
 cif_cstno,
 t_bsn.bdf_bsncode,
 '01',
 ('01' || substr(cif_cstno, 3))  as arf_id
FROM
(SELECT distinct cif_cstno
   FROM (select cst.cif_cstno, arf.arf_cstno, arf.ARF_BSNCODE
          from (select * from cb_cst_inf where cif_cstno not like 'CB%') cst,
               (SELECT *
                  FROM CB_AUTH_REF
                 WHERE ARF_ID NOT IN
                       (select adf_id
                          from cb_auth_def
                         where adf_alias = '余额对账一步模式')) arf
         where cst.cif_cstno = arf.arf_cstno(+))
 WHERE arf_cstno IS NOT NULL
   AND cif_cstno IN (SELECT DISTINCT UIF_CSTNO
                       FROM CB_USER_INF
                      WHERE substr(UIF_RIGHT, 3, 1) = '1')
   AND cif_cstno IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
      '10200000', --行内转账
      '10200001', --行内同名转账
      '10200100', --行内批量转账
      '10200300', --跨行转账
      '10300000' --代发业务
     ))
   AND cif_cstno NOT IN(
     SELECT ARF_CSTNO FROM CB_AUTH_REF
     WHERE ARF_BSNCODE IN(
     '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
     )))
cross join
   (select bdf_bsncode
    from CB_BSNDEF
    where bdf_bsncode in (
      '13000101', --活期转定期
      '13000102', --定期转活期
      '13000201', --通知存款开立
      '13000204' --通知存款立即支取
    )) t_bsn;
commit;
end;
/
