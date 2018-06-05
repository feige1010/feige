create or replace procedure PB_MOVE_INTO_PB_CST_INF
AS   --迁移新大陆 个人银行客户表
begin
insert into pb_cst_inf
   (CIP_CSTNO,
    CIP_CHARID,
    CIP_CHARPWD,
    CIP_CIFNO,
    CIP_NAME,
    CIP_SEX,
    CIP_CTFTYPE,
    CIP_CTFNO,
    CIP_MOBILE,
    CIP_STT,
    CIP_EBANKTIME,
    CIP_OPENTIME,
    CIP_EMAIL,
    CIP_PHONE,
    CIP_ADDRESS,
    CIP_ZIPCODE,
    CIP_WORK,
    CIP_CHARFIRSTFLAG,
    CIP_SCORE,
    CIP_EBANKNODE,
    CIP_OPENTYPE,
    CIP_CHANNEL)
  SELECT CID,
        (case login_type
           when '2' then login_name
           else
            nvl(MOBILE, CID)
         end) as CHARID, --用户登录名 如果原网银采用自定义用户登录则移植自定义用户名,否则移植其手机号，手机号为空设置为null字符
         LOGIN_PWD,
         KERNEL_ID,
         NAME,
         --转换性别编码
         (case when GENDER = '1' then 'F'
               when GENDER = '0' then 'M'
            else null end) GENDER,
          --转换身份类型编码
         (case
             when document_type = '0' then '0' --身份证
             when document_type = '1' then '2' --户口簿
             when document_type = '2' then '3' --护照
             when document_type = '3' then '1' --军官证
             when document_type = '4' then '5' --士兵证
             when document_type = '5' then 'A' --港澳居民来往内地通行证
             when document_type = '6' then '6' --台湾同胞来往内地通行证
             when document_type = '7' then '7' --临时身份证
             when document_type = '8' then '4' --返乡证
             when document_type = 'X' then 'X' --其他证件
          end) as document_type,
          (case
            when document_type is null then null
            else document_id
           end) as document_id,
         MOBILE,
         --转换状态编码
         (case STATUS
            when '1' then '0'
            when '2' then '2'
	    when '4' then '0'
          end) STATUS ,
         to_char(CRE_DATE, 'yyyymmddhh24miss') CRE_DATE,
	 to_char(CRE_DATE, 'yyyymmddhh24miss') OPENTIME,
         EMAIL,
         PHONE,
         ADDR,
         POSTAL_CODE,
         PROFESSION,
         '1',
         0,
         CTRL_BRANCH,
         '1',
         '1101'
 FROM  (select cst.*, lg_md.login_type, lg_md.login_name, fm.CTRL_BRANCH AS CTRL_BRANCH, doc.document_id, doc.document_type
            from ( select distinct cst.*
                   from PERBANK_ZHIJIANG.t_customer cst,
                        PERBANK_ZHIJIANG.t_account acc,
                        COMM_ZHIJIANG.t_cert cert
                   where cst.cid = acc.cid
                     and acc.acct_no = cert.acct_no
                     and cst.status != '0'
                     and acc.status = '1'
                     and cert.status != 0) cst,
                 PERBANK_ZHIJIANG.t_login_mode lg_md,
                 fm_client fm,
                 (select * from fm_client_document where pref_flag = 'Y') doc
            where cst.cid = lg_md.cid(+) AND
                  cst.KERNEL_ID = fm.CLIENT_NO(+) and
                  cst.KERNEL_ID = doc.CLIENT_NO(+))
  where STATUS not in(0, 4) AND STATUS IS NOT NULL; --过滤掉注销用户
end;
/
