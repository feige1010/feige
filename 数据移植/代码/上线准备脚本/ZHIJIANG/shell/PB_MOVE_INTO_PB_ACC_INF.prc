--/
create or replace procedure PB_MOVE_INTO_PB_ACC_INF
AS  --迁移新大陆 个人银行个人会员账户信息
begin
 insert into pb_acc_inf
   (AIF_CSTNO,
    AIF_ACCNO,
    AIF_ACCTYPE,
    AIF_ALIAS,
    AIF_CRYTYPE,
    AIF_LASTUSE,
    AIF_USERNAME,
    AIF_STT,
    AIF_BANKID,
    AIF_IMPFLAG,
    AIF_ACTIVEFLAG,
    AIF_OPENNODE,
    AIF_CARDFLG,
    AIF_HOSTNO,
    AIF_CHANNEL)
 SELECT acc.CID,
        acc.ACCT_NO,
        (case acc.ACCT_TYPE
             when '0' then '01'
             when '1' then '02'
             else 'null'
         end) as ACCT_TYPE , --账号类型转换编码,除借记卡、普通存折外全部设置为字符串'null'
        acc.ACCT_ALIAS,
        '01' as CCY, --acc.CCY 币种默认设置为01 人民币,
        to_char(acc.CRE_DATE, 'yyyymmddhh24miss') as CRE_DATE,
        cst.NAME,
        '0',
        '313222080002', --此值根据和希文沟通未用到，设置默认值
        '1' as AIF_IMPFLAG,   --账户迁移标示
        '1' as AIF_ACTIVEFLAG, --账户开通标志
        FUNC_GET_ACCT_OPENNODE(ACCT_NO) as OPENNODE,
        FUNC_CHECK_CARDFLG(ACCT_NO) as CARDFLG,
        KERNEL_ID,
        '1101' as CHANNEL

  FROM PERBANK_ZHIJIANG.t_account acc, PERBANK_ZHIJIANG.t_customer cst
  where acc.cid = cst.cid  and
        cst.status != '0' and --过滤掉注销用户
        acc.status  = '1';    --过滤掉无效账号

--设置默认账号标识
update pb_acc_inf acc
   set acc.aif_defaltflag = '1'
 where (acc.aif_cstno, aif_lastuse) in
       (select aif_cstno, max(aif_lastuse)
          from pb_acc_inf
        where aif_cstno not like 'PB%'
         group by aif_cstno)
  and acc.aif_cstno not like 'PB%';
end;
/
