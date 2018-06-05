
--个人开户、企业开户、企业销户柜员流水
INSERT INTO IM_OPERATION_FLOW
  (IOF_BATCHNO,
   IOF_SUBMIT_USERNO,
   IOF_SUBMIT_TIME,
   IOF_BSNCODE,
   IOF_TYPE,
   IOF_FILENAME,
   IOF_STATE,
   IOF_PK)
select *
  from (select cid as BATCHNO,
               (case CTRL_BRANCH
		      when '800001' then 'XNGY001'
		      when '800101' then 'XNGY101'
		      when '800102' then 'XNGY102'
		      when '800103' then 'XNGY103'
		      when '800104' then 'XNGY104'
		      when '800105' then 'XNGY105'
		      when '800106' then 'XNGY106'
		      when '800107' then 'XNGY107'
		      when '999998' then 'XNGY998'
		      when '999999' then 'XNGY999'
               end) AS SUBMIT_USERNO,
               to_char(CRE_DATE, 'yyyymmddhh24miss') AS SUBMIT_TIME,
               '20000100' AS BSNCODE,
               '1' AS IOF_TYPE,
               to_char(CRE_DATE, 'yyyymmdd') || '/' || cst.cid AS FILENAME,
               '0' AS STATE,
               'CIP_CIFNO=' || cst.Kernel_Id AS PK
          from (select cst.*,
                       lg_md.login_type,
                       lg_md.login_name,
                       fm.CTRL_BRANCH
                  from PERBANK_DINGYE.t_customer   cst,
                       PERBANK_DINGYE.t_login_mode lg_md,
                       fm_client                 fm
                 where cst.cid = lg_md.cid(+)
                   and cst.KERNEL_ID = fm.CLIENT_NO(+)) cst
         where STATUS not in (0, 4)
           AND STATUS IS NOT NULL
        UNION
        select SUBSTR(firm.Ncid, 2) AS BATCHNO,
               (case CTRL_BRANCH
		      when '800001' then 'XNGY001'
		      when '800101' then 'XNGY101'
		      when '800102' then 'XNGY102'
		      when '800103' then 'XNGY103'
		      when '800104' then 'XNGY104'
		      when '800105' then 'XNGY105'
		      when '800106' then 'XNGY106'
		      when '800107' then 'XNGY107'
		      when '999998' then 'XNGY998'
		      when '999999' then 'XNGY999'
               end) AS SUBMIT_USERNO,
               to_char(CREATE_TIME, 'yyyymmddhh24miss') AS SUBMIT_TIME,
               '20100100' AS BSNCODE,
               '1' AS IOF_TYPE,
               to_char(CREATE_TIME, 'yyyymmdd') || '/' ||
               SUBSTR(firm.Ncid, 2) AS FILENAME,
               '0' AS STATE,
               'CIP_CIFNO=' || firm.Ncid AS PK
          from (SELECT firm.*, clt.CTRL_BRANCH
                  FROM FIRMBANK_DINGYE.t_FIRM firm, fm_client clt
                 WHERE firm.NCID = clt.CLIENT_NO(+)) firm
         where firm_status != '0'
        UNION
        select SUBSTR(firm.Ncid, 2) AS BATCHNO,
               (case CTRL_BRANCH
 		      when '800001' then 'XNGY001'
		      when '800101' then 'XNGY101'
		      when '800102' then 'XNGY102'
		      when '800103' then 'XNGY103'
		      when '800104' then 'XNGY104'
		      when '800105' then 'XNGY105'
		      when '800106' then 'XNGY106'
		      when '800107' then 'XNGY107'
		      when '999998' then 'XNGY998'
		      when '999999' then 'XNGY999'
               end) AS SUBMIT_USERNO,
               to_char(CREATE_TIME, 'yyyymmddhh24miss') AS SUBMIT_TIME,
               '20100200' AS BSNCODE,
               '2' AS IOF_TYPE,
               to_char(CREATE_TIME, 'yyyymmdd') || '/' ||
               SUBSTR(firm.Ncid, 2) AS FILENAME,
               '0' AS STATE,
               'CIP_CIFNO=' || firm.Ncid AS PK
          from (SELECT firm.*, clt.CTRL_BRANCH
                  FROM FIRMBANK_DINGYE.t_FIRM firm, fm_client clt
                 WHERE firm.NCID = clt.CLIENT_NO(+)) firm
         where firm_status = '0')
 where SUBMIT_USERNO is not null;
commit;

---------------------------------------------------

--个人销户个人流水
INSERT INTO PB_CST_INF_HIS
 (CIP_FLOWNO,
  CIP_CSTNO,
  CIP_CHARID,
  CIP_CHARPWD,
  CIP_CHARFIRSTFLAG,
  CIP_STT,
  CIP_OPENTYPE,
  CIP_OPTYPE,
  CIP_CHANNEL,
  CIP_TELLERNO,
  CIP_OPTIME)
select *
  from (SELECT UUID,
               CID AS CSTNO,
               (case login_type
                 when '2' then
                  login_name
                 else
                  nvl(MOBILE, CID)
               end) as CHARID,
               LOGIN_PWD,
               '3' AS CHARFIRSTFLAG,
               '0' AS STT,
               '1' AS OPENTYPE,
               '20000402' AS OPTYPE,
               '1101' AS CHANNEL,
               (case CTRL_BRANCH
		      when '800001' then 'XNGY001'
		      when '800101' then 'XNGY101'
		      when '800102' then 'XNGY102'
		      when '800103' then 'XNGY103'
		      when '800104' then 'XNGY104'
		      when '800105' then 'XNGY105'
		      when '800106' then 'XNGY106'
		      when '800107' then 'XNGY107'
		      when '999998' then 'XNGY998'
		      when '999999' then 'XNGY999'
               end) AS TELLERNO,
               to_char(UPD_DATE, 'yyyymmddhh24miss') AS SUBMIT_TIME
          FROM (select cst.rowid as uuid,
                       cst.*,
                       lg_md.login_type,
                       lg_md.login_name,
                       fm.CTRL_BRANCH
                  from PERBANK_DINGYE.t_customer   cst,
                       PERBANK_DINGYE.t_login_mode lg_md,
                       fm_client                 fm
                 where cst.cid = lg_md.cid(+)
                   and cst.KERNEL_ID = fm.CLIENT_NO(+))
         where STATUS = '0'
           AND STATUS IS NOT NULL)
 where CSTNO is not null;
 commit;