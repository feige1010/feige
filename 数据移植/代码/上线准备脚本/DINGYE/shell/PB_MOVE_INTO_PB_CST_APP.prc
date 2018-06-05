--/
create or replace procedure PB_MOVE_INTO_PB_CST_APP
AS  --迁移新大陆 个人网银客户渠道关联表（PB_CST_APP）,只有未开通的渠道才在该表存储。
begin
 insert into PB_CST_APP(
  pca_cstno, 
  pca_appid,
  pca_date)
 select cst_t.cid, app_t.pai_appid, to_char(sysdate, 'yyyymmdd')
 from
 (select cst.cid
  from PERBANK_DINGYE.t_customer cst
  where STATUS != 0 --过滤掉注销用户
 ) cst_t
 cross join
 (select pai_appid from PUB_APP_INFO where pai_appid in ('1301')) app_t;
end;
/
