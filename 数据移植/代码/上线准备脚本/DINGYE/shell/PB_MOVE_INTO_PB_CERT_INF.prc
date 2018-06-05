create or replace procedure PB_MOVE_INTO_PB_CERT_INF
AS  --迁移新大陆 个人银行个人会员认证方式信息
begin
    --移植UKEY信息
insert into PB_CERT_INF(
        PCI_CSTNO,
        PCI_CERTID,
        PCI_MEDIUMTYPE,
        PCI_CERTINFO,
        PCI_STARTTIME,
        PCI_ENDTIME,
        PCI_STT,
        PCI_CERTTYPE,
        PCI_REFNO,
        PCI_AUTHNO,
        PCI_USBKEYTYPE
        )
select cid,
       to_char(nvl(pb_no, id_cert)) as id_cert,
       '0' MEDIUMTYPE, --介质类型,  当前介质类型只有0-UKEY
       FUNC_FORMATE_CERTINFO_UPPER(DNISO) as DNISO,
       nvl(start_date,to_char(CRE_DATE, 'yyyymmdd')) as CRE_DATE,
       nvl(end_date,to_char(OVER_DATE, 'yyyymmdd')) as OVER_DATE,
       '4' as STATUS, --激活状态
       (case MEDIA
         when '1' then
          '0' --非预制证书
         when '2' then
          '1' --预置证书
         else
          null
       end) MEDIA,
       REF_CODE, --参考号
       AUTH_CODE, --授权码
       (case MEDIA
         when '1' then
          '0' --非预制证书
         when '2' then
          '1' --预置证书
       end) as USBKEYTYPE
  from (select cst.cid,
               pb_no,
               cert.id_cert,
               cert.DNISO,
               cert.CRE_DATE,
               cert.start_date,
               cert.OVER_DATE,
               cert.end_date,
               cert.MEDIA,
               cert.REF_CODE,
               cert.AUTH_CODE
          from PERBANK_DINGYE.t_account acc,
               PERBANK_DINGYE.t_customer cst,
               (SELECT DISTINCT cert.*, eb_cert.pb_no, eb_cert.cert_status,eb_cert.start_date, eb_cert.end_date
                  from  (SELECT * FROM COMM_DINGYE.t_cert WHERE (dniso, id_cert) IN
                        (SELECT dniso, MAX(id_cert) FROM COMM_DINGYE.t_cert cert GROUP BY dniso)) cert, EB_CERTIFICATE eb_cert
                 where cert.dniso = eb_cert.dn(+)) cert
         where acc.cid = cst.cid
           and acc.acct_no = cert.acct_no
           and cst.status != '0' --过滤掉注销用户
           and acc.status = '1' ---过滤掉无效账号
           and cert.status != 0) --过滤无效证书
 where (cid, CRE_DATE) in
       (select acc.cid, max(cert.CRE_DATE) as CRE_DATE
          from COMM_DINGYE.t_cert cert, PERBANK_DINGYE.t_account acc
         where cert.acct_no = acc.acct_no
         group by acc.cid);

  --移植短信信息
  INSERT INTO pb_cert_inf(
        PCI_CSTNO,
        PCI_CERTID,
        PCI_REGISTTIME,
        PCI_REGISTNODE,
        PCI_REGISTNODENM,
        PCI_ID,
        PCI_MEDIUMTYPE,
        PCI_USBKEYTYPE,
        PCI_STT)
  SELECT T44.CID AS PCI_CSTNO,
         T44.MOBILE AS PCI_CERTID,
         to_char(REG_DATE, 'yyyymmddhh24miss') AS PCI_REGISTTIME,
         org.orgid AS PCI_REGISTNODE,
         org.orgname AS PCI_REGISTNODENM,
         'TIANMAO1' AS PCI_ID,
         '3' AS PCI_MEDIUMTYPE,
         '1' AS PCI_USBKEYTYPE,
         '4' PCI_STT
    FROM (SELECT CID, VALUE AS MOBILE, REG_DATE
                   FROM (SELECT DISTINCT T11.CID, T22.VALUE, T22.REG_DATE
                           FROM (SELECT DISTINCT CST.CID, ACC.ACCT_NO
                                   FROM PERBANK_DINGYE.T_ACCOUNT  ACC,
                                        PERBANK_DINGYE.T_CUSTOMER CST,
                                        COMM_DINGYE.t_cert cert
                                  WHERE ACC.CID = CST.CID
                                    AND acc.acct_no = cert.acct_no
                                    AND CST.STATUS != '0' --过滤掉注销用户
                                    AND ACC.STATUS = '1' --过滤掉无效账号
                                    AND cert.status != 0
                                 ) T11,
                                (SELECT FN.ACCT_NO,
                                        FA.KEYNAME,
                                        FA.VALUE,
                                        FA.REG_DATE
                                   FROM PERBANK_DINGYE.T_ACCT_FUNC      FN,
                                        PERBANK_DINGYE.T_ACCT_FUNC_ATTR FA
                                  WHERE FN.ID_ACCT_FUNC = FA.ID_ACCT_FUNC
                                    AND FA.KEYNAME = 'mobile'
                                    AND FN.BUS_CODE = 'SMS_BUSINESS') T22
                          WHERE T11.ACCT_NO = T22.ACCT_NO) T33
                  WHERE (T33.CID, T33.REG_DATE) IN
                        ( SELECT T11.CID, MAX(T22.REG_DATE) AS
                           FROM (SELECT DISTINCT CST.CID, ACC.ACCT_NO
                                    FROM PERBANK_DINGYE.T_ACCOUNT  ACC,
                                         PERBANK_DINGYE.T_CUSTOMER CST,
                                         COMM_DINGYE.t_cert cert
                                   WHERE ACC.CID = CST.CID
                                     AND acc.acct_no = cert.acct_no
                                     AND CST.STATUS != '0' --过滤掉注销用户
                                     AND ACC.STATUS = '1' --过滤掉无效账号
                                     AND cert.status != 0
                                  ) T11,
                                 (SELECT FN.ACCT_NO,
                                         FA.KEYNAME,
                                         FA.VALUE,
                                         FA.REG_DATE
                                    FROM PERBANK_DINGYE.T_ACCT_FUNC      FN,
                                         PERBANK_DINGYE.T_ACCT_FUNC_ATTR FA
                                   WHERE FN.ID_ACCT_FUNC = FA.ID_ACCT_FUNC
                                     AND FA.KEYNAME = 'mobile'
                                     AND FN.BUS_CODE = 'SMS_BUSINESS') T22
                          WHERE T11.ACCT_NO = T22.ACCT_NO
                          GROUP BY T11.CID)) T44,
         (select cst.CID, fm.CTRL_BRANCH
            from (SELECT DISTINCT cst.*
                   from PERBANK_DINGYE.t_customer cst,
                        PERBANK_DINGYE.t_account acc,
                        COMM_DINGYE.t_cert cert
                   where cst.cid = acc.cid
                     and acc.acct_no = cert.acct_no
                     and cst.status != '0'
                     and acc.status = '1'
                     and cert.status != 0) cst, fm_client fm
           where cst.KERNEL_ID = fm.CLIENT_NO(+)
             and STATUS != 0) T5,
         org
   WHERE T44.CID = T5.CID
     and T5.CTRL_BRANCH = org.orgid;
end;
/
