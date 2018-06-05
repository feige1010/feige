create or replace procedure CB_MOVE_INTO_CB_CST_INF
AS  --迁移新大陆 企业银行企业客户信息表
begin
 insert into  CB_CST_INF(
      CIF_CSTNO,
      CIF_HOSTNO,
      CIF_NAMECN,
      CIF_NAMEEN,
      CIF_ADDRESS,
      CIF_LEGAL,
      CIF_PHONE,
      CIF_OPENTIME,
      CIF_FAX,
      CIF_TYPE,
      CIF_REGISTERDATE,
      CIF_REGISTERTIME,
      CIF_MANAGEFLAG,
      CIF_CONSOLETYPE,
      CIF_STT,
      CIF_LEVEL,
      CIF_GROUPFLAG,
      CIF_EBANKNODE,
      CIF_CTFTYP,
      CIF_CTFNO,
      CIF_MOBILE,
      CIF_PAYACCOUNT
      )
select substr(NCID,2) as NCID,
       CID,
       CNAME,
       ENAME,
       CN_ADDRESS,
       CONTACT,
       nvl(contact_id,PHONE) as PHONE,
       to_char(CREATE_TIME, 'yyyymmddhh24miss') as OPENTIME ,
       FAX,
       '1' as TYPE,
       to_char(CREATE_TIME, 'yyyymmdd') as REGISTERDATE,
       to_char(CREATE_TIME, 'yyyymmddhh24miss')  as REGISTERTIME,
       '1' as MANAGEFLAG,  --管理模式 默认设置：企业自行管理：'1'
       '0' as CONSOLETYPE, --企业管理台模式 默认设置：0：单人模式人,分配UKEY时再计算
       (case firm_status
          when '1' then '0'
          when '2' then '2'
        end) as firm_status, --源数据为lock状态对应到 冻结状态
        '0' as "LEVEL",
        '0' as GROUPFLAG,
        CTRL_BRANCH,
        (case
             when document_type = 'H' then '53' --登记证书
             when document_type = 'J' then '57' --金融许可证
             when document_type = 'P' then '54' --审批件
             when document_type = 'Q' then '56' --批文
             when document_type = 'X' then 'X' --其他证件
             when document_type = 'Y' then '52' --营业执照
             when document_type = 'Z' then '20' --组织机构代码
        end) as id_type,
        (case
             when document_type is null then null
             else document_id
        end) as document_id,
        MOBILE,
        PAYACCOUNT
  from (
      SELECT firm.*,
             clt.CTRL_BRANCH,
             doc.document_id,
             doc.document_type,
             (CASE
               WHEN INSTR(contact.contact_id,  ',') > 0 THEN
                substr(contact.contact_id, INSTR(contact.contact_id,  ',') + 1)
               WHEN INSTR(contact.contact_id,  '，') > 0 THEN
                substr(contact.contact_id, INSTR(contact.contact_id,  '，') + 1)
               WHEN INSTR(contact.contact_id,  ' ') > 0 THEN
                substr(contact.contact_id, INSTR(contact.contact_id,  ' ') + 1)
               WHEN INSTR(contact.contact_id,  '\') > 0 THEN
                substr(contact.contact_id, INSTR(contact.contact_id,  '\') + 1)
               WHEN INSTR(contact.contact_id,  '/') > 0 THEN
                substr(contact.contact_id, INSTR(contact.contact_id,  '/') + 1)
               WHEN INSTR(contact.contact_id,  '、') > 0 THEN
                substr(contact.contact_id, INSTR(contact.contact_id,  '、') + 1)
              ELSE
                 contact.contact_id
              END) AS contact_id,
             nvl(op.card_no, op.base_acct_no) as PAYACCOUNT
              FROM FIRMBANK_ZHIJIANG.t_FIRM firm,
                   (select * from eb_open_info where indivdual_flag = 'E' and eb_status = 'A') op,
                   fm_client clt,
                   (select * from fm_client_document where pref_flag = 'Y') doc,
                   (select client_no, regexp_substr(contact_id, '[^/]+', 1, 1)as contact_id from fm_client_contact_tbl where pref_flag = 'Y') contact
              WHERE firm.NCID = op.ext_1(+) and
                    firm.NCID = clt.CLIENT_NO(+) and
                    firm.NCID = doc.CLIENT_NO(+) and
                    firm.NCID = contact.CLIENT_NO(+) and
                    firm_status != '0' --过滤掉已注销客户
       );
 end;
/
