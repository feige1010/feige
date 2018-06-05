--个人用信息
SELECT CST.CIP_CHARID AS 登录ID,
       CST.CIP_NAME   AS 客户名称,
       CST.CIP_MOBILE AS 手机号码,
       CST.CIP_CSTNO  AS 网银客户号,
       CST.CIP_CIFNO  AS 核心客户号,
       CST.Cip_Ebanktime AS 开户时间
  FROM pb_cst_inf CST
WHERE CIP_CIFNO IS NOT NULL
ORDER BY Cip_Ebanktime DESC;

 --企业用户信息
 SELECT cst.cif_namecn AS 企业客户名称,
   nvl(cst.cif_mobile, cst.cif_phone) AS 联系电话
 FROM cb_cst_inf cst;

---老网银重复用户查询
SELECT t.*, acct.账户号 FROM 
(SELECT CST.CIP_CHARID AS 登录ID,
       CST.CIP_NAME   AS 客户名称,
       CST.CIP_MOBILE AS 手机号码,
       CST.CIP_CSTNO  AS 网银客户号,
       CST.CIP_CIFNO  AS 核心客户号
  FROM PB_CST_INF CST
 WHERE CST.CIP_MOBILE IN (SELECT CIP_MOBILE
                            FROM PB_CST_INF T
                           WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                           GROUP BY T.CIP_MOBILE
                          HAVING COUNT(CIP_MOBILE) > 1)
UNION
SELECT CST.CIP_CHARID AS 登录ID,
       CST.CIP_NAME   AS 客户名称,
       CST.CIP_MOBILE AS 手机号码,
       CST.CIP_CSTNO  AS 网银客户号,
       CST.CIP_CIFNO  AS 核心客户号
  FROM PB_CST_INF CST
 WHERE CST.Cip_Charid IN (SELECT Cip_Charid
                            FROM PB_CST_INF T
                           WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                           GROUP BY T.Cip_Charid
                          HAVING COUNT(Cip_Charid) > 1)) t,
(SELECT aif_cstno, to_char(wm_concat(acc.aif_accno)) AS 账户号 FROM pb_acc_inf acc GROUP BY acc.aif_cstno) acct
WHERE t.网银客户号 = acct.aif_cstno
ORDER BY 手机号码, 登录ID;
  

--企业用户模式证书信息
select cst.cif_cstno as 客户号,
       t.uif_userno as 用户号,
       cst.cif_namecn as 企业名称,
       nvl(cst.cif_phone, cst.cif_mobile) as 联系方式,
       decode(cst.cif_consoletype, '0', '单人模式', '1', '双人模式') as 企业管理台模式,
       (select to_char(wm_concat(adf_alias)) as adf_alias
          from cb_auth_def
         where adf_cstno = cst.cif_cstno
         group by adf_cstno) as 授权模式,
       t.uif_username as 用户姓名,
     --  uif_right,UIF_AUTHLVL,
       (CASE 
         WHEN uif_right =  '10000' THEN '录入角色'
         WHEN uif_right =  '01000' THEN '复核角色'       
         WHEN uif_right =  '01000' THEN '复核角色'       
         WHEN uif_right =  '00010' AND UIF_AUTHLVL !=0 AND UIF_AUTHLVL IS NOT NULL THEN '管理、授权角色'       
         WHEN uif_right =  '01010' THEN '管理、复核角色'
         WHEN uif_right =  '00010' THEN '管理角色'          
         WHEN UIF_AUTHLVL !=0 AND UIF_AUTHLVL IS NOT NULL THEN '授权角色'       
        END) as 分配角色,
      
       t.cci_certid as UKEY编号,
       (case
         when t.cci_certid is null then
          '是'
         else
          '否'
       end) as 是否筛减,
       (select eb_cert.pb_no from
            firmbank_dingye.t_operator op,
            comm_dingye.t_cert cert,
            EB_CERTIFICATE eb_cert
          where op.id_cert = cert.ID_CERT(+) AND
                cert.dniso = eb_cert.dn(+) AND
                op.oid = t.oid) as "UK编号(老网银)",
       t.login_name as "登录名称(老网银)",
       (case
         when t.oper_type = '0' then
          '系统管理员'
         when t.oper_type = '1' then
          '系统主管'
         when t.oper_type = '2' then
          (
           
           select to_char(wm_concat(role_id))
             from (select oid,
                          '操作员_' || role_id || '(' || auth_type || ')' as role_id
                      from (select oid,
                                   (case
                                     when auth_type = 'STD' then
                                      '转账'
                                     when auth_type = 'FINANCING' then
                                      '理财'
                                   end) as auth_type,
                                   (case
                                     when rl.role_id = 'SUBMITOR' then
                                      '经办'
                                     when rl.role_id = 'CHECKER' then
                                      '复核'
                                     when rl.role_id = 'GRANTOR' then
                                      '授权'
                                   end) as role_id
                              from firmbank_dingye.t_auth      auth,
                                   firmbank_dingye.t_auth_role rl
                             where auth.id_auth = rl.id_auth
                               and auth.auth_status = '1'))
            where oid = t.oid
            group by oid)
       
       end) as "分配角色(老网银)",
       (select biz_flow_mode
          from (select ncid, to_char(wm_concat(biz_flow_mode)) as biz_flow_mode
                  from (select ncid,
                               biz_flow_mode || '(' || biz_type || ')' as biz_flow_mode
                          from (select ncid,
                                       (case cfg.biz_type
                                         when 'GENERAL' then
                                          '转账'
                                         when 'FINANCING' then
                                          '理财'
                                       end) as biz_type,
                                       (case cfg.biz_flow_mode
                                         when 'ONE_STEP' then
                                          '一步模式'
                                         when 'TWO_STEP' then
                                          '二步模式'
                                         when 'TRI_STEP' then
                                          '三步模式'
                                         when 'ANY_STEP' then
                                          '任意步模式'
                                       end) as biz_flow_mode
                                  from firmbank_dingye.t_bizflow_cfg cfg
                                 where cfg_status in ('1')))
                 group by ncid) t1
         where t1.ncid = t.ncid) as "授权模式(老网银)"
  from cb_cst_inf cst,
       (select *
          from (select u.*, o.ncid, o.oid, o.login_name, o.oper_type
                  from cb_user_inf u, firmbank_dingye.t_operator o
                 where u.uif_cstno = substr(o.ncid, 2)
                   and u.uif_userno = substr(o.oid, 3)
                ) usr,
               cb_cert_inf cert
         where usr.uif_cstno = cert.cci_cstno(+)
           and usr.uif_userno = cert.cci_userno(+)) t
 where cst.cif_cstno = t.uif_cstno
   and cst.cif_cstno in
       (select distinct cif_cstno
          from (select cif_cstno,
                       sum(case
                             when t.cci_certid is null then
                              0
                             else
                              1
                           end) as numb
                  from cb_cst_inf cst,
                       (select *
                          from (select u.*,
                                       o.ncid,
                                       o.oid,
                                       o.login_name,
                                       o.oper_type
                                  from cb_user_inf  u,
                                       firmbank_dingye.t_operator o
                                 where u.uif_cstno = substr(o.ncid, 2)
                                   and u.uif_userno = substr(o.oid, 3)
                                ) usr,
                               cb_cert_inf cert
                         where usr.uif_cstno = cert.cci_cstno(+)
                           and usr.uif_userno = cert.cci_userno(+)) t
                 where cst.cif_cstno = t.uif_cstno
                 group by cif_cstno)
         where numb > 0)
 order by cst.cif_cstno, t.uif_right;

----问题数据
select fm.ncid,
       fm.cname as 企业名称,
       nvl(fm.mobile, fm.phone) 联系电话,
       qes as 问题点
  from firmbank_dingye.t_firm fm,
       (select ncid,
             (case
               when numbAll is not null then
                numbAll
               else
                numb3 || (case
                  when numb1 is not null then
                   ',' || numb1
                end) || (case
                  when numb0 is not null then
                   ',' || numb0
                end)
             end) as qes
        from (select ncid,
                     (case
                       when numbAll = 0 then
                        '所有用户均未绑定证书，已经在柜面进行账户注销'
                       else
                        null
                     end) numbAll,
                     (case
                       when numb3 = 0 then
                        '无操作员'
                       else
                        null
                     end) as numb3,
                     (case
                       when numb1 = 1 then
                        '系统主管未绑定证书'
                       else
                        null
                     end) as numb1,
                     (case
                       when numb0 = 1 then
                        '系统管理员未绑定证书'
                       else
                        null
                     end) as numb0
                from (select ncid,
                             sum(case oper_type
                                   when '2' then
                                    1
                                   else
                                    0
                                 end) numb3,
                             sum(case
                                   when oper_type = '2' and id_cert is null then
                                    1
                                   else
                                    0
                                 end) numb2,
                             sum(case
                                   when oper_type = '1' and id_cert is null then
                                    1
                                   else
                                    0
                                 end) numb1,
                             sum(case
                                   when oper_type = '0' and id_cert is null then
                                    1
                                   else
                                    0
                                 end) numb0,
                             sum(case
                                   when id_cert is not null then
                                    1
                                   else
                                    0
                                 end) numbAll
                        from firmbank_dingye.t_operator op
                       where OPER_STATUS in ('1', '3')
                       group by ncid)
               where numb3 = 0
                  or numb2 = 1
                  or numb1 = 1
                  or numb0 = 1))t
 where fm.ncid = t.ncid
 order by qes;

 
 --未分配角色操作员企业信息
select fm.ncid, fm.cname as 企业名称, nvl(fm.mobile, fm.phone) 联系电话
  from firmbank_dingye.t_firm fm,
       (select distinct ncid
          from firmbank_dingye.t_operator op
         where OPER_STATUS in ('1', '3')
           and op.oper_type = '2'
           and op.oid not in (select distinct oid
                                from firmbank_dingye.t_auth auth
                               where auth.auth_status = '1')
           and op.ncid not in(select distinct ncid
                                from firmbank_dingye.t_auth auth
                               where auth.auth_status = '1')
         order by ncid) t
 where fm.ncid = t.ncid;


----------------------------------------------
 SELECT DISTINCT T.登录ID,
                T.客户名称,
                T.手机号码       AS 当前网银手机号,
                FMC.CONTACT_ID   AS 核心客户信息手机号,
                MOBILE_TELEPHONE AS 核心短信通知手机号,
                ACCT.账户号,
                核心客户号,
                brc.brh_id AS 机构编号,
                brc.brh_name AS 机构名称
  FROM (SELECT CST.CIP_CHARID AS 登录ID,
               CST.CIP_NAME   AS 客户名称,
               CST.CIP_MOBILE AS 手机号码,
               CST.CIP_CSTNO  AS 网银客户号,
               CST.CIP_CIFNO  AS 核心客户号,
               CST.Cip_Ebanknode
          FROM PB_CST_INF CST
         WHERE CST.CIP_MOBILE IN
               (SELECT CIP_MOBILE
                  FROM PB_CST_INF T
                 WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                 GROUP BY T.CIP_MOBILE
                HAVING COUNT(CIP_MOBILE) > 1)
        UNION
        SELECT CST.CIP_CHARID AS 登录ID,
               CST.CIP_NAME   AS 客户名称,
               CST.CIP_MOBILE AS 手机号码,
               CST.CIP_CSTNO  AS 网银客户号,
               CST.CIP_CIFNO  AS 核心客户号,
               CST.Cip_Ebanknode
          FROM PB_CST_INF CST
         WHERE CST.CIP_CHARID IN
               (SELECT CIP_CHARID
                  FROM PB_CST_INF T
                 WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                 GROUP BY T.CIP_CHARID
                HAVING COUNT(CIP_CHARID) > 1)) T,
       (SELECT AIF_CSTNO, TO_CHAR(WM_CONCAT(ACC.AIF_ACCNO)) AS 账户号
          FROM PB_ACC_INF ACC
         GROUP BY ACC.AIF_CSTNO) ACCT,
       (SELECT *
          FROM FM_CLIENT_CONTACT_TBL
         WHERE (PREF_FLAG = 'Y' OR PREF_FLAG IS NULL)) FMC,
       (SELECT RM.MOBILE_TELEPHONE, SG.CLIENT_NO
          FROM RB_LINK_MAN RM,
               (SELECT SP.CLIENT_NO, SP.SIGN_UP_ID
                  FROM RB_SIGN_UP SP,
                       (SELECT CLIENT_NO, MAX(SIGN_DATE) AS SIGN_DATE
                          FROM RB_SIGN_UP SG
                         GROUP BY CLIENT_NO) MX
                 WHERE MX.CLIENT_NO = SP.CLIENT_NO
                   AND MX.SIGN_DATE = SP.SIGN_DATE
                   AND SP.SIGN_STATUS = '1') SG
         WHERE RM.SIGN_UP_ID = SG.SIGN_UP_ID) MT,
         dingye_bank.im_branch brc
 WHERE T.网银客户号 = ACCT.AIF_CSTNO(+)
   AND T.核心客户号 = FMC.CLIENT_NO(+)
   AND T.核心客户号 = MT.CLIENT_NO(+)
   AND T.CIP_EBANKNODE = brc.brh_id(+)
 ORDER BY 手机号码, 登录ID, 核心客户号;