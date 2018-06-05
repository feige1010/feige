select *
  from FIRMBANK_ZHIJIANG.t_bizflow_cfg cfg
 where cfg_status in ('1') -- 查询激活状态数据
   and BIZ_TYPE = 'GENERAL' -- 查询企业转账授权
   and biz_flow_mode is not null;
   
select biz_flow_mode, instr(biz_flow_mode, 'TWO_STEP') from   
(select cfg.ncid, to_char(wm_concat(cfg.biz_flow_mode)) as biz_flow_mode,to_char(wm_concat(cfg.flow_roles)) as flow_roles
  from FIRMBANK_newland.t_bizflow_cfg cfg
 where cfg_status in ('1') -- 查询激活状态数据
   --and BIZ_TYPE = 'GENERAL' -- 查询企业转账授权
   and biz_flow_mode is not null 
  -- and substr(cfg.ncid, 2) = 
   group by cfg.ncid) t;
   
   
select biz_flow_mode, instr(biz_flow_mode, 'TWO_STEP') from   
(select cfg.ncid, to_char(wm_concat(cfg.biz_flow_mode)) as biz_flow_mode,to_char(wm_concat(cfg.flow_roles)) as flow_roles
  from FIRMBANK_newland.t_bizflow_cfg cfg
 where cfg_status in ('1') -- 查询激活状态数据
   --and BIZ_TYPE = 'GENERAL' -- 查询企业转账授权
   and biz_flow_mode is not null 
  -- and substr(cfg.ncid, 2) = 
   group by cfg.ncid) t
   
  -- SUBMITOR GRANTOR CHECKER


select count(auth.oid) as op_num
from FIRMBANK_ZHIJIANG.t_auth auth,
     FIRMBANK_ZHIJIANG.t_auth_role rl
where auth.id_auth = rl.id_auth
  and auth.auth_status = '1'
  and auth.ncid = '10000000035'
  and rl.role_id = 'CHECKER';
  
  
 select *
from FIRMBANK_ZHIJIANG.t_auth auth,
     FIRMBANK_ZHIJIANG.t_auth_role rl
where auth.id_auth = rl.id_auth
  and auth.auth_status = '1'
  and auth.ncid = '10000000035';
  
  
select oid, to_char(wm_concat(role_id)) as p_num
from FIRMBANK_ZHIJIANG.t_auth auth,
     FIRMBANK_ZHIJIANG.t_auth_role rl
where auth.id_auth = rl.id_auth
  and auth.auth_status = '1'
  and auth.ncid = '10000000035'
  group by oid


            select cert.cci_cstno, cert.cci_userno, cert.cci_certid
              from FIRMBANK_ZHIJIANG.t_auth auth, FIRMBANK_ZHIJIANG.t_auth_role rl, CB_CERT_INF cert
             where auth.id_auth = rl.id_auth
               and auth.auth_status = '1'
               and substr(auth.ncid, 2) = '0000010158'
               and rl.role_id = 'CHECKER'
               and substr(auth.ncid, 2) = cert.cci_cstno
               and substr(auth.oid, 3) = cert.cci_userno;
  
  
             select auth.ncid, auth.oid
              from FIRMBANK_ZHIJIANG.t_auth auth, FIRMBANK_ZHIJIANG.t_auth_role rl
             where auth.id_auth = rl.id_auth
               and auth.auth_status = '1'
               and substr(auth.ncid, 2) = '0000010158'
               and rl.role_id = 'CHECKER';
               
               
drop table TEMP_ROLE_USER_REF;
create table TEMP_ROLE_USER_REF  as 
select ncid, role_id, to_char(wm_concat(substr(t.oid,3))) as oids, count(t.oid) as role_num
from
(select distinct auth.ncid, role_id, auth.oid
  from FIRMBANK_ZHIJIANG.t_auth auth, FIRMBANK_ZHIJIANG.t_auth_role rl
 where auth.id_auth = rl.id_auth
   and auth.auth_status = '1'
   and auth.ncid in (select ncid
                      from FIRMBANK_ZHIJIANG.t_firm
                     where firm_status != '0')
   and  oid in (select oid
                     from FIRMBANK_ZHIJIANG.t_operator
                    where OPER_STATUS in ('1', '3'))
   union
   
   select op.ncid, 'ADMIN' as role_id, op.oid
      from FIRMBANK_ZHIJIANG.t_operator op
   where OPER_STATUS in('1', '3') and oper_type in(0,1)
   ) t
group by t.ncid, t.role_id;


select * from TEMP_ROLE_USER_REF
 
select *
  from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
 where substr(auth.ncid, 2) = cert.cci_cstno
   and auth.ncid = '10000000035'
   and instr(auth.oids, cert.cci_userno) = 0
   and auth.role_id = 'SUBMITOR';
   
 drop table TEMP_CERT_ROLE_USER_REF;
 create table TEMP_CERT_ROLE_USER_REF  as 
 select cert.cci_cstno,
        cert.cci_certid,
       -- to_char(wm_concat(auth.role_id)) as role_ids,
       -- to_char(wm_concat(cert.cci_userno)) as oids,
        count(auth.role_id) as cert_num,
        sum(case when ROLE_ID = 'ADMIN' THEN 1 ELSE 0 END) as ADMIN_NUM,
        sum(case when ROLE_ID = 'SUBMITOR' THEN 1 ELSE 0 END) as SUBMITOR_NUM,
        sum(case when ROLE_ID = 'CHECKER' THEN 1 ELSE 0 END) as CHECKER_NUM,
        sum(case when ROLE_ID = 'GRANTOR' THEN 1 ELSE 0 END) as GRANTOR_NUM,
        
        to_char(wm_concat(case when ROLE_ID = 'ADMIN' THEN cert.cci_userno ELSE null END)) as ADMIN_USER,
        to_char(wm_concat(case when ROLE_ID = 'SUBMITOR' THEN cert.cci_userno ELSE null END)) as SUBMITOR_USER,
        to_char(wm_concat(case when ROLE_ID = 'CHECKER' THEN cert.cci_userno ELSE null END)) as CHECKER_USER,
        to_char(wm_concat(case when ROLE_ID = 'GRANTOR' THEN cert.cci_userno ELSE null END)) as GRANTOR_USER
   from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
  where substr(auth.ncid, 2) = cert.cci_cstno
    and instr(auth.oids, cert.cci_userno) > 0
  group by cert.cci_cstno, cert.cci_certid;
  
  
  select *
     from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
  where substr(auth.ncid, 2) = cert.cci_cstno
    and instr(auth.oids, cert.cci_userno) > 0
  group by cert.cci_cstno, cert.cci_certid;

select cert.*
  from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
 where substr(auth.ncid, 2) = cert.cci_cstno
   and auth.ncid = '10000000035'
   and instr(auth.oids, cert.cci_userno) > 0
   and auth.role_id = 'SUBMITOR'
group by cert.cci_certid;

SELECT * FROM TEMP_CERT_ROLE_USER_REF;
SELECT * FROM TEMP_ROLE_USER_REF;

select REF.CCI_CERTID,
      -- REF.ROLE_IDS,
      -- REF.OIDS,
       REF.CERT_NUM,
       REF.ADMIN_NUM,
       REF.SUBMITOR_NUM,
       REF.CHECKER_NUM,
       REF.GRANTOR_NUM,
       REF.ADMIN_USER,
       REF.SUBMITOR_USER,
       REF.CHECKER_USER,
       REF.GRANTOR_USER
  from TEMP_CERT_ROLE_USER_REF REF
 where cci_certid in (select distinct cert.cci_certid
                        from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
                       where substr(auth.ncid, 2) = cert.cci_cstno
                         and auth.ncid = '10000000035'
                         and instr(auth.oids, cert.cci_userno) > 0
                         and auth.role_id = 'CHECKER');
                         
--查询复核角色人员使用了哪些UKEY
SELECT REF.CCI_CERTID,
       REF.ADMIN_NUM,
       REF.SUBMITOR_NUM,
       REF.CHECKER_NUM,
       REF.GRANTOR_NUM,
       REF.ADMIN_USER,
       REF.SUBMITOR_USER,
       REF.CHECKER_USER,
       REF.GRANTOR_USER
FROM TEMP_CERT_ROLE_USER_REF REF
WHERE REF.CCI_CSTNO = '0000000035'
 AND INSTR(ROLE_IDS, 'CHECKER') > 0;
 
 
 
--查询当前这些UKEY的管理人员是否还拥有
select REF.CCI_CERTID,
      -- REF.ROLE_IDS,
      -- REF.OIDS,
       REF.CERT_NUM,
       REF.ADMIN_NUM,
       REF.SUBMITOR_NUM,
       REF.CHECKER_NUM,
       REF.GRANTOR_NUM,
       REF.ADMIN_USER,
       REF.SUBMITOR_USER,
       REF.CHECKER_USER,
       REF.GRANTOR_USER
  from TEMP_CERT_ROLE_USER_REF REF
  
  --查询录入角色人员去除此UKEY后还拥有UKEY人数
   SELECT COUNT(cert.cci_certid) FROM  CB_CERT_INF cert
   WHERE cert.cci_certid != '2011092302200021' AND
         INSTR('000011,000025,000019', cert.cci_userno) > 0;
         
         
   --  --查询录入角色人员去除此UKEY后还拥有UKEY人数
   SELECT *
     FROM CB_CERT_INF cert
    WHERE cert.cci_certid != '2011092302200021'
      AND INSTR('000011,000025,000019', cert.cci_userno) > 0;
 
 select auth.*
  from TEMP_ROLE_USER_REF auth, CB_CERT_INF cert
 where substr(auth.ncid, 2) = cert.cci_cstno
   and auth.ncid = '10000000035'
   and instr(auth.oids, cert.cci_userno) > 0
   and auth.role_id = 'SUBMITOR';
   
 
	
  select owner
    from (select enty.owner
            from FIRMBANK_ZHIJIANG.t_bf_entry enty
           where owner in
                 (select distinct auth.oid
                    from FIRMBANK_ZHIJIANG.t_auth auth,
                         FIRMBANK_ZHIJIANG.t_auth_role rl
                   where auth.id_auth = rl.id_auth(+)
                     and rl.role_id = 'SUBMITOR' --经办角色操作员
                     and auth.auth_status = '1' --只查询激活状态数据
                     and auth.ncid = '10000000035'
                     and instr('000022,000025,000019,000011,000026',substr(auth.oid, 3)) > 0
                     )
           order by start_time desc)
   where rownum = 1;
   
   
               
    select oid
--      into submitUserId
      from (select oid
              from FIRMBANK_ZHIJIANG.t_auth auth,
                   FIRMBANK_ZHIJIANG.t_auth_role rl
             where auth.id_auth = rl.id_auth(+)
               and auth.auth_status = '1'
               and rl.role_id = 'SUBMITOR'
               and auth.ncid =  '10000000035'
               and instr('000022,000025,000019,000011,000026',substr(auth.oid, 3)) > 0
             order by issue_time desc)
     where rownum = 1;
     
     
     
     select * from  CB_CERT_INF cert where cert.cci_cstno = '0000000035' for update ;
      update CB_CERT_INF cert
        set cert.cci_certid = null
      where cert.cci_certid = SED_CERTID
        and cert.cci_userno != submitUserId;
      commit;
      
      
      
      
      
      SELECT REF.CCI_CERTID,
                 REF.ADMIN_NUM,
                 REF.SUBMITOR_NUM,
                 REF.CHECKER_NUM,
                 REF.GRANTOR_NUM,
                 REF.ADMIN_USER,
                 REF.SUBMITOR_USER,
                 REF.CHECKER_USER,
                 REF.GRANTOR_USER
          FROM TEMP_CERT_ROLE_USER_REF REF
          WHERE REF.CCI_CSTNO = '0000000035'
           AND INSTR(ROLE_IDS, 'CHECKER') > 0;
           
           
           SELECT COUNT(cert.cci_userno)
             FROM TEMP_ROLE_USER_REF, CB_CERT_INF cert
            WHERE cert.cci_cstno = substr(NCID, 2)
              AND INSTR(OIDS, cert.cci_userno) > 0
              AND NCID = '10000000035'
              AND ROLE_ID = 'SUBMITOR'
              AND cert.cci_certid IS NOT NULL
              AND cert.cci_certid != '2011092302200021';
              
          SELECT cci_certid
            FROM (SELECT cert.cci_certid
                    FROM TEMP_ROLE_USER_REF, CB_CERT_INF cert
                   WHERE substr(NCID, 2) = cert.cci_cstno
                     AND substr(NCID, 2) = '0000000035'
                     AND INSTR(OIDS, cert.cci_userno) > 0
                     AND ROLE_ID = 'SUBMITOR'
                     AND cert.cci_certid IS NOT NULL
                     AND cert.cci_certid != '2011092302200021'
                   ORDER BY cert.cci_certid DESC)
           WHERE ROWNUM = 1;
              
      SELECT COUNT(cert.cci_certid) 
          FROM  CB_CERT_INF cert
          WHERE cert.cci_certid != '2011092302200021' AND
                cert.cci_cstno = '0000000035'
          INSTR('000011,000019', cert.cci_userno) > 0;
          
          
          SELECT cert.*
          FROM  CB_CERT_INF cert
          WHERE cert.cci_certid != '2011092302200021' AND
                cert.cci_cstno = '0000000035'
                
                
select *
  from TEMP_ROLE_USER_REF RUR 
 where RUR.ncid = '10000000035'
   and RUR.role_id = 'CHECKER';
   

select *
  from (select t1.oid as owner, count(his.id_current_step) as ownerNum
          from (select distinct auth.oid
                  from FIRMBANK_ZHIJIANG.t_auth  auth,
                       FIRMBANK_ZHIJIANG.t_auth_role rl
                 where auth.id_auth = rl.id_auth
                   and auth.auth_status = '1'
                   and rl.role_id = 'CHECKER'
                   and substr(auth.oid, 3) in
                       (select cci_userno
                          from cb_cert_inf
                         where cci_certid in
                               (select DISTINCT cert.cci_certid
                                  from cb_cert_inf cert
                                 where cert.cci_certid not in --非共用系统管理、系统主管证书
                                       (select cert.cci_certid
                                          from FIRMBANK_ZHIJIANG.t_operator op,
                                               cb_cert_inf              cert
                                         where substr(op.ncid, 2) =
                                               cert.cci_cstno
                                           and substr(op.oid, 3) =
                                               cert.cci_userno
                                           and OPER_STATUS in ('1', '3')
                                           and op.oper_type in ('0', '1')
                                           and op.ncid =
                                               '1' || certInfos.cci_cstno)
                                   and cert.cci_cstno = certInfos.cci_cstno
                                   and cert.cci_userno != substr(submitUserId, 3) --非选定操作员
                                ))) t1,
               FIRMBANK_ZHIJIANG.T_BF_HISTORY_STEP his
         where t1.oid = his.owner(+)
         group by t1.oid
         order by ownerNum asc)
 where rownum = 1;
 
SELECT USERID
FROM 
(SELECT SUBSTR(OWNER, 3) AS USERID
  FROM FIRMBANK_ZHIJIANG.T_BF_HISTORY_STEP
 WHERE INSTR('000022,000026', SUBSTR(OWNER, 3)) > 0
 order by START_TIME DESC)
WHERE ROWNUM = 1;
 

SELECT * FROM FIRMBANK_ZHIJIANG.T_BF_HISTORY_STEP 
WHERE OWNER = '000022';

select * from cb_cert_inf where cci_cstno = '0000000220';

 SELECT REF.CCI_CERTID,
         REF.ADMIN_NUM,
         REF.SUBMITOR_NUM,
         REF.CHECKER_NUM,
         REF.GRANTOR_NUM,
         REF.ADMIN_USER,
         REF.SUBMITOR_USER,
         REF.CHECKER_USER,
         REF.GRANTOR_USER
  FROM TEMP_CERT_ROLE_USER_REF REF, CB_CERT_INF CERT
  WHERE REF.CCI_CERTID = CERT.CCI_CERTID
   AND REF.CCI_CSTNO =  '0000000220'
   AND INSTR(ROLE_IDS, 'ADMIN') > 0 
   AND INSTR(REF.ADMIN_USER, CERT.CCI_USERNO) > 0
   
--GRANTOR CHECKER
select CERT.CCI_USERNO
  from TEMP_ROLE_USER_REF REF, CB_CERT_INF CERT
 where substr(REF.NCID,2) = CERT.CCI_CSTNO
   and instr(REPLACE(REF.oids, '000044', ''), CERT.CCI_USERNO) > 0
   and ncid = '10000000220'
   and role_id = 'ADMIN';
      

   --000043,000044
   select * from  CB_CERT_INF CERT
   
    SELECT REF.CCI_CERTID,
         REF.ADMIN_NUM,
         REF.SUBMITOR_NUM,
         REF.CHECKER_NUM,
         REF.GRANTOR_NUM,
         REF.ADMIN_USER,
         REF.SUBMITOR_USER,
         REF.CHECKER_USER,
         REF.GRANTOR_USER
  FROM TEMP_CERT_ROLE_USER_REF REF
  WHERE REF.CCI_CSTNO =  '0000000220';
  
  
select *
  from TEMP_ROLE_USER_REF
