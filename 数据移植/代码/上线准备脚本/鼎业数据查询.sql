--��������Ϣ
SELECT CST.CIP_CHARID AS ��¼ID,
       CST.CIP_NAME   AS �ͻ�����,
       CST.CIP_MOBILE AS �ֻ�����,
       CST.CIP_CSTNO  AS �����ͻ���,
       CST.CIP_CIFNO  AS ���Ŀͻ���,
       CST.Cip_Ebanktime AS ����ʱ��
  FROM pb_cst_inf CST
WHERE CIP_CIFNO IS NOT NULL
ORDER BY Cip_Ebanktime DESC;

 --��ҵ�û���Ϣ
 SELECT cst.cif_namecn AS ��ҵ�ͻ�����,
   nvl(cst.cif_mobile, cst.cif_phone) AS ��ϵ�绰
 FROM cb_cst_inf cst;

---�������ظ��û���ѯ
SELECT t.*, acct.�˻��� FROM 
(SELECT CST.CIP_CHARID AS ��¼ID,
       CST.CIP_NAME   AS �ͻ�����,
       CST.CIP_MOBILE AS �ֻ�����,
       CST.CIP_CSTNO  AS �����ͻ���,
       CST.CIP_CIFNO  AS ���Ŀͻ���
  FROM PB_CST_INF CST
 WHERE CST.CIP_MOBILE IN (SELECT CIP_MOBILE
                            FROM PB_CST_INF T
                           WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                           GROUP BY T.CIP_MOBILE
                          HAVING COUNT(CIP_MOBILE) > 1)
UNION
SELECT CST.CIP_CHARID AS ��¼ID,
       CST.CIP_NAME   AS �ͻ�����,
       CST.CIP_MOBILE AS �ֻ�����,
       CST.CIP_CSTNO  AS �����ͻ���,
       CST.CIP_CIFNO  AS ���Ŀͻ���
  FROM PB_CST_INF CST
 WHERE CST.Cip_Charid IN (SELECT Cip_Charid
                            FROM PB_CST_INF T
                           WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                           GROUP BY T.Cip_Charid
                          HAVING COUNT(Cip_Charid) > 1)) t,
(SELECT aif_cstno, to_char(wm_concat(acc.aif_accno)) AS �˻��� FROM pb_acc_inf acc GROUP BY acc.aif_cstno) acct
WHERE t.�����ͻ��� = acct.aif_cstno
ORDER BY �ֻ�����, ��¼ID;
  

--��ҵ�û�ģʽ֤����Ϣ
select cst.cif_cstno as �ͻ���,
       t.uif_userno as �û���,
       cst.cif_namecn as ��ҵ����,
       nvl(cst.cif_phone, cst.cif_mobile) as ��ϵ��ʽ,
       decode(cst.cif_consoletype, '0', '����ģʽ', '1', '˫��ģʽ') as ��ҵ����̨ģʽ,
       (select to_char(wm_concat(adf_alias)) as adf_alias
          from cb_auth_def
         where adf_cstno = cst.cif_cstno
         group by adf_cstno) as ��Ȩģʽ,
       t.uif_username as �û�����,
     --  uif_right,UIF_AUTHLVL,
       (CASE 
         WHEN uif_right =  '10000' THEN '¼���ɫ'
         WHEN uif_right =  '01000' THEN '���˽�ɫ'       
         WHEN uif_right =  '01000' THEN '���˽�ɫ'       
         WHEN uif_right =  '00010' AND UIF_AUTHLVL !=0 AND UIF_AUTHLVL IS NOT NULL THEN '������Ȩ��ɫ'       
         WHEN uif_right =  '01010' THEN '�������˽�ɫ'
         WHEN uif_right =  '00010' THEN '�����ɫ'          
         WHEN UIF_AUTHLVL !=0 AND UIF_AUTHLVL IS NOT NULL THEN '��Ȩ��ɫ'       
        END) as �����ɫ,
      
       t.cci_certid as UKEY���,
       (case
         when t.cci_certid is null then
          '��'
         else
          '��'
       end) as �Ƿ�ɸ��,
       (select eb_cert.pb_no from
            firmbank_dingye.t_operator op,
            comm_dingye.t_cert cert,
            EB_CERTIFICATE eb_cert
          where op.id_cert = cert.ID_CERT(+) AND
                cert.dniso = eb_cert.dn(+) AND
                op.oid = t.oid) as "UK���(������)",
       t.login_name as "��¼����(������)",
       (case
         when t.oper_type = '0' then
          'ϵͳ����Ա'
         when t.oper_type = '1' then
          'ϵͳ����'
         when t.oper_type = '2' then
          (
           
           select to_char(wm_concat(role_id))
             from (select oid,
                          '����Ա_' || role_id || '(' || auth_type || ')' as role_id
                      from (select oid,
                                   (case
                                     when auth_type = 'STD' then
                                      'ת��'
                                     when auth_type = 'FINANCING' then
                                      '���'
                                   end) as auth_type,
                                   (case
                                     when rl.role_id = 'SUBMITOR' then
                                      '����'
                                     when rl.role_id = 'CHECKER' then
                                      '����'
                                     when rl.role_id = 'GRANTOR' then
                                      '��Ȩ'
                                   end) as role_id
                              from firmbank_dingye.t_auth      auth,
                                   firmbank_dingye.t_auth_role rl
                             where auth.id_auth = rl.id_auth
                               and auth.auth_status = '1'))
            where oid = t.oid
            group by oid)
       
       end) as "�����ɫ(������)",
       (select biz_flow_mode
          from (select ncid, to_char(wm_concat(biz_flow_mode)) as biz_flow_mode
                  from (select ncid,
                               biz_flow_mode || '(' || biz_type || ')' as biz_flow_mode
                          from (select ncid,
                                       (case cfg.biz_type
                                         when 'GENERAL' then
                                          'ת��'
                                         when 'FINANCING' then
                                          '���'
                                       end) as biz_type,
                                       (case cfg.biz_flow_mode
                                         when 'ONE_STEP' then
                                          'һ��ģʽ'
                                         when 'TWO_STEP' then
                                          '����ģʽ'
                                         when 'TRI_STEP' then
                                          '����ģʽ'
                                         when 'ANY_STEP' then
                                          '���ⲽģʽ'
                                       end) as biz_flow_mode
                                  from firmbank_dingye.t_bizflow_cfg cfg
                                 where cfg_status in ('1')))
                 group by ncid) t1
         where t1.ncid = t.ncid) as "��Ȩģʽ(������)"
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

----��������
select fm.ncid,
       fm.cname as ��ҵ����,
       nvl(fm.mobile, fm.phone) ��ϵ�绰,
       qes as �����
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
                        '�����û���δ��֤�飬�Ѿ��ڹ�������˻�ע��'
                       else
                        null
                     end) numbAll,
                     (case
                       when numb3 = 0 then
                        '�޲���Ա'
                       else
                        null
                     end) as numb3,
                     (case
                       when numb1 = 1 then
                        'ϵͳ����δ��֤��'
                       else
                        null
                     end) as numb1,
                     (case
                       when numb0 = 1 then
                        'ϵͳ����Աδ��֤��'
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

 
 --δ�����ɫ����Ա��ҵ��Ϣ
select fm.ncid, fm.cname as ��ҵ����, nvl(fm.mobile, fm.phone) ��ϵ�绰
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
 SELECT DISTINCT T.��¼ID,
                T.�ͻ�����,
                T.�ֻ�����       AS ��ǰ�����ֻ���,
                FMC.CONTACT_ID   AS ���Ŀͻ���Ϣ�ֻ���,
                MOBILE_TELEPHONE AS ���Ķ���֪ͨ�ֻ���,
                ACCT.�˻���,
                ���Ŀͻ���,
                brc.brh_id AS �������,
                brc.brh_name AS ��������
  FROM (SELECT CST.CIP_CHARID AS ��¼ID,
               CST.CIP_NAME   AS �ͻ�����,
               CST.CIP_MOBILE AS �ֻ�����,
               CST.CIP_CSTNO  AS �����ͻ���,
               CST.CIP_CIFNO  AS ���Ŀͻ���,
               CST.Cip_Ebanknode
          FROM PB_CST_INF CST
         WHERE CST.CIP_MOBILE IN
               (SELECT CIP_MOBILE
                  FROM PB_CST_INF T
                 WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                 GROUP BY T.CIP_MOBILE
                HAVING COUNT(CIP_MOBILE) > 1)
        UNION
        SELECT CST.CIP_CHARID AS ��¼ID,
               CST.CIP_NAME   AS �ͻ�����,
               CST.CIP_MOBILE AS �ֻ�����,
               CST.CIP_CSTNO  AS �����ͻ���,
               CST.CIP_CIFNO  AS ���Ŀͻ���,
               CST.Cip_Ebanknode
          FROM PB_CST_INF CST
         WHERE CST.CIP_CHARID IN
               (SELECT CIP_CHARID
                  FROM PB_CST_INF T
                 WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                 GROUP BY T.CIP_CHARID
                HAVING COUNT(CIP_CHARID) > 1)) T,
       (SELECT AIF_CSTNO, TO_CHAR(WM_CONCAT(ACC.AIF_ACCNO)) AS �˻���
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
 WHERE T.�����ͻ��� = ACCT.AIF_CSTNO(+)
   AND T.���Ŀͻ��� = FMC.CLIENT_NO(+)
   AND T.���Ŀͻ��� = MT.CLIENT_NO(+)
   AND T.CIP_EBANKNODE = brc.brh_id(+)
 ORDER BY �ֻ�����, ��¼ID, ���Ŀͻ���;