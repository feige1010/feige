create or replace procedure PB_MOVE_INTO_PB_CST_ITEM
AS  --迁移新大陆 个人银行 个人会员功能关闭表
begin
 insert into pb_cst_item (
   pca_cstno,
   pca_itemid,
   pca_date,
   pca_appid
 )
 select cst_t.cid, '-1', to_char(sysdate, 'yyyymmdd'), app_t.pai_appid
 from
 (select cst.cid
  from PERBANK_ZHONGNING.t_customer cst
  where STATUS != 0 --过滤掉注销用户
 ) cst_t
 cross join
 (select pai_appid from PUB_APP_INFO where pai_appid in ('1101', '1201')) app_t;
end;
/
