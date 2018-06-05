CREATE OR REPLACE PROCEDURE PB_MOVE_INTO_PB_FIX_CRT_TRAN
AS  --迁移新大陆 个人网银 个人会员定活互转流水信息（PB_FIX_CURRENT_TRAN）
BEGIN
--活期转定期、通知存款
INSERT INTO PB_FIX_CURRENT_TRAN(
        FCT_FLOWNO,
        FCT_CSTNO,
        FCT_SUBTIME,
        FCT_DCFLAG,
        FCT_CRYTYPE,
        FCT_AMT,
        FCT_BSNCODE，
        FCT_PAYACCNAME，
        FCT_PAYACCBANK，
        FCT_RCVACCNAME，
        FCT_FIXACCNO，
        FCT_CURRENTACCNO,
        FCT_FIXTYPE,
        FCT_FIXTIME,
        FCT_STT,
        FCT_HOSTERRCODE,
        FCT_SECURITY,
        FCT_HOSTTRANTIME,
        FCT_APPID
 )
 select *
  from (select regexp_replace(d.ROWID, '[/|+]', 'A') as UUID,
               (select cst.cid
                  from PERBANK_DINGYE.t_account acc,
                       PERBANK_DINGYE.t_customer cst,
                       (select cert.*, eb_cert.pb_no
                          from COMM_DINGYE.t_cert cert, EB_CERTIFICATE eb_cert
                         where cert.dniso = eb_cert.dn(+)) cert
                 where acc.cid = cst.cid
                   and acc.acct_no = cert.acct_no
                   and cst.status != '0' --过滤掉注销用户
                   and acc.status = '1' ---过滤掉无效账号
                   and cert.status != 0 -- 过滤无效证书
                   and cst.kernel_id = b.client_no) as cid,
               to_char(d.tran_date_time, 'yyyymmddhh24miss') as 交易时间,
               '0', --活转定
               '01' as 币种,
               ABS(d.tran_amt) as 金额,
               (case
                 when acct_type = '200' then
                  '00200100' --活期转定期
                 when acct_type = '215' or acct_type = '216' or acct_type = '214' then
                  '00200102' --活转通知
               end) as BSNCODE,
               b.acct_name as 付款户名,
               b.branch as 付款开户行,
               b.acct_name as 收款方户名,
               a.card_no as 定期账号,
               a.card_no as 活期账号,
               decode(acct_type, '200', '01', '215', '14', '216', '14', '214', '14') as 定期类型,
               (case
                 when DEP_TERM_TYPE = 'D' and DEP_TERM_PERIOD = '1' then
                  '101' --一天通知
                 when DEP_TERM_TYPE = 'D' and DEP_TERM_PERIOD = '7' then
                  '107' --七天通知
                 when DEP_TERM_TYPE = 'M' and DEP_TERM_PERIOD = '3' then
                  '203' --3个月整存整取
                 when DEP_TERM_TYPE = 'M' and DEP_TERM_PERIOD = '6' then
                  '206' --6个月整存整取
                 when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '1' then
                  '301' --1年整存整取
                 when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '2' then
                  '302' --2年整存整取
                 when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '3' then
                  '303' --3年整存整取
                 when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '5' then
                  '305' --5年整存整取
                 when DEP_TERM_TYPE is null and DEP_TERM_PERIOD is null and  acct_type = '214' then
                   '100'
               end) as 存期,
               '90' as 状态,
               '0' as hosterrcode,
               '000000' as SECURITY, --无验证
               to_char(b.OPEN_TRAN_DATE, 'yyyymmddhh24miss') as HOSTTRANTIME,
               '1101' as APPID --个人银行
          from cd_card_mainacc a, rb_acct b, rb_tda c, rb_tran_hist d
         where a.main_acc_no = b.base_acct_no
           and b.internal_key = c.internal_key
           and d.internal_key = b.internal_key
           and a.flag = '0' --只查询正常状态数据
           and acct_type in ('200', '215', '216', '214')
           and d.tran_type in ('4186','EB25')
           and certificate_no is not null)
 where cid is not null;


--定期转活期
INSERT INTO PB_FIX_CURRENT_TRAN(
        FCT_FLOWNO,
        FCT_CSTNO,
        FCT_SUBTIME,
        FCT_DCFLAG,
        FCT_CRYTYPE,
        FCT_AMT,
        FCT_BSNCODE，
        FCT_PAYACCNAME，
        FCT_PAYACCBANK，
        FCT_RCVACCNAME，
        FCT_FIXACCNO，
        FCT_CURRENTACCNO,
        FCT_FIXTIME,
        FCT_STT,
        FCT_HOSTERRCODE,
        FCT_SECURITY,
        FCT_HOSTTRANTIME,
        FCT_APPID
 )
SELECT * FROM(
select (regexp_replace(d.ROWID, '[/|+]', 'A') || 'F2C') AS UUID,
       (select cst.cid
           from PERBANK_DINGYE.t_account acc,
                PERBANK_DINGYE.t_customer cst,
                (select cert.*, eb_cert.pb_no
                   from COMM_DINGYE.t_cert cert, EB_CERTIFICATE eb_cert
                  where cert.dniso = eb_cert.dn(+)) cert
          where acc.cid = cst.cid
            and acc.acct_no = cert.acct_no
            and cst.status != '0' --过滤掉注销用户
            and acc.status = '1' ---过滤掉无效账号
            and cert.status != 0 -- 过滤无效证书
            and cst.kernel_id = b.client_no) as cstno,
       to_char(d.tran_date_time, 'yyyymmddhh24miss') as 交易时间,
       '1' as 定活互转方向, --定转活:1
       '01' as 币种,
       ABS(d.tran_amt) as 金额,
       (case
          when acct_type = '200' then '00200103'  --定期转活期
          when acct_type = '215' or acct_type = '216' or acct_type = '214' then '00200104'  --通知支取
       end) as BSNCODE,
       b.acct_name as 付款户名,
       b.branch as 付款开户行,
       b.acct_name as 收款方户名,
       a.card_no as 定期账号,
       a.card_no as 活期账号,
       (case
            when DEP_TERM_TYPE = 'D' and DEP_TERM_PERIOD = '1' then
              '101' --一天通知
            when DEP_TERM_TYPE = 'D' and DEP_TERM_PERIOD = '7' then
              '107' --七天通知
            when DEP_TERM_TYPE = 'M' and DEP_TERM_PERIOD = '3' then
              '203' --3个月整存整取
            when DEP_TERM_TYPE = 'M' and DEP_TERM_PERIOD = '6' then
              '206' --6个月整存整取
            when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '1' then
              '301' --1年整存整取
            when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '2' then
              '302' --2年整存整取
            when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '3' then
              '303' --3年整存整取
            when DEP_TERM_TYPE = 'Y' and DEP_TERM_PERIOD = '5' then
              '305' --5年整存整取
            when DEP_TERM_TYPE is null and DEP_TERM_PERIOD is null and  acct_type = '214' then
                               '100'
        end) as 存期,
       '90' as 状态,
       '0' as hosterrcode,
       '000000' as SECURITY, --无验证
       to_char(b.OPEN_TRAN_DATE, 'yyyymmddhh24miss') as HOSTTRANTIME,
       '1101' as APPID --个人银行
  from cd_card_mainacc a, rb_acct b, rb_tda c, rb_tran_hist d
 where a.main_acc_no = b.base_acct_no
   and d.internal_key = b.internal_key
   and b.internal_key = c.internal_key
   and acct_status = 'C'
   and a.flag = '0' --只查询正常状态数据
   and acct_type in ('200', '215', '216','214')
   and d.tran_type in('4186','EB22'))
  WHERE cstno IS NOT NULL;
END;
/
