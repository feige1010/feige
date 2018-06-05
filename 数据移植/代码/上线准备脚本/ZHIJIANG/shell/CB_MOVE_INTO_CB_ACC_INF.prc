create or replace procedure CB_MOVE_INTO_CB_ACC_INF
AS  --迁移新大陆 企业银行企业会员账户信息
begin
 insert into cb_acc_inf(
        AIF_CSTNO,
        AIF_ACCNO,
        AIF_NAME,
        AIF_ALIAS,
        AIF_CRYTYPE,
        AIF_STT,
        AIF_SIGNDATE,
        AIF_SIGNTIME,
        AIF_OPENNODE,
        AIF_RIGHT,
        AIF_TYPE,
        AIF_DEPOSITTYPE
 )
 select
    substr(NCID, 2) as NCID,
    ACCT_ID,
    "NAME",
    "ALIAS",
    '01' as CURRENCY, --设置币种默认值为 人民币
    '0' as ACCT_STATUS,
     to_char(CREATE_TIME, 'yyyymmdd') as SIGNDATE,
     to_char(CREATE_TIME, 'yyyymmddhh24miss') as SIGNTIME ,
    OPENNODE,
    FUNC_GET_ACCT_RIGHT(ACCT_ID) as "RIGHT",
    (CASE WHEN ACCT_NATURE IS NULL THEN  NULL
          WHEN ACCT_NATURE = '7' THEN '02'
          WHEN ACCT_NATURE = '8' THEN '01'
          WHEN ACCT_NATURE = '9' THEN '04'
          WHEN ACCT_NATURE = '10'THEN '03'
      ELSE '99'
    END) as ACCT_NATURE,
    (case
       when core_acct_type = '601' then
         '201'
       when core_acct_type = '400' then
         '200'
       end)as DEPOSITTYPE --活期存款
 from
 (SELECT
   acctInfo.*,
   acct_ch.ACCT_NATURE,
   acct.acct_type as core_acct_type,
   FUNC_GET_ACCT_OPENNODE(ACCT_ID) AS OPENNODE
  FROM
    FIRMBANK_ZHIJIANG.t_ACCOUNT acctInfo,
    rb_acct acct,
    rb_acct_attach acct_ch
  WHERE
    acctInfo.ACCT_ID = acct.BASE_ACCT_NO(+)
   AND acct.INTERNAL_KEY = acct_ch.INTERNAL_KEY(+)
   AND acct.CERTIFICATE_NO IS NULL
   --AND acct.ACCT_STATUS = 'A' --核心账户信息只查询激活状态数据
   AND acctInfo.ACCT_STATUS = '1') --只查询正常状态账户数据
WHERE OPENNODE IS NOT NULL;
end;
/
