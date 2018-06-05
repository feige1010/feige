--------------------------个人银行----------------------
 --1.个人会员信息（PB_CST_INF）
   delete from pb_cst_inf where cip_cstno not like 'PB%';
   call PB_MOVE_INTO_PB_CST_INF();
   commit;
    -- select * from pb_cst_inf where cip_cstno not like 'PB%';
   
 --2、个人会员账户信息（PB_ACC_INF）
   delete from PB_ACC_INF where aif_cstno not like 'PB%';
   call PB_MOVE_INTO_PB_ACC_INF();
   commit;
    -- select * from PB_ACC_INF where aif_cstno not like 'PB%';
   
--4、个人会员认证方式信息（PB_CERT_INF）
   delete from PB_CERT_INF where pci_cstno not like 'PB%';
   call pb_move_into_pb_cert_inf();
   commit;
    -- select * from PB_CERT_INF where pci_cstno not like 'PB%';
 
--5、个人会员收款人名册信息（PB_REL_CST_BOOK）
  delete from PB_REL_CST_BOOK where pbk_memberid not like 'PB%';
  call pb_move_into_pb_rel_cst_book();
  commit;
   -- select * from PB_REL_CST_BOOK  where pbk_memberid not like 'PB%';
   
--6、个人会员电子回单信息(PB_ELECTRONIC_BILL)
delete from PB_ELECTRONIC_BILL where peb_cstno not like 'PB%';
call PB_MOVE_INTO_PB_ELE_BILL();
commit;
--select * from PB_ELECTRONIC_BILL where peb_cstno not like 'PB%'; 
  
--7.个人会员定活互转流水信息（PB_FIX_CURRENT_TRAN）
 delete from PB_FIX_CURRENT_TRAN WHERE FCT_CSTNO NOT LIKE 'PB%';
 CALL PB_MOVE_INTO_PB_FIX_CRT_TRAN();
 COMMIT;
  -- select * from PB_FIX_CURRENT_TRAN WHERE FCT_CSTNO NOT LIKE 'PB%';
  
--8.个人会员交易限额信息（PB_CST_CURR_LIMIT）
delete from PB_CST_CURR_LIMIT where ccl_cstno  NOT LIKE 'PB%';
delete from pb_cst_trans_limit where CCL_CSTNO  NOT LIKE 'PB%';
call pb_move_into_pb_cst_curr_limit();
commit;
--select * from PB_CST_CURR_LIMIT where ccl_cstno  NOT LIKE 'PB%';
--select * from pb_cst_trans_limit where CCL_CSTNO  NOT LIKE 'PB%';

--9.个人会员转账交易流水信息（PB_TRANSFER）
delete from PB_TRANSFER WHERE PTR_MEMBERID not like 'PB%';
CALL PB_MOVE_INTO_PB_TRANSFER();
COMMIT;
-- select * from PB_TRANSFER WHERE PTR_MEMBERID not like 'PB%';

--10.个人会员交易流水信息（PB_TRAN_FLOW）
delete from PB_TRAN_FLOW WHERE TRF_CSTNO NOT like 'PB%';
CALL PB_MOVE_INTO_PB_TRAN_FLOW();
COMMIT;
 -- select * from PB_TRAN_FLOW WHERE TRF_CSTNO NOT like 'PB%';

--11.个人网银客户渠道表（PB_CST_APP）
 delete from PB_CST_APP where pca_cstno not like 'PB%';
 call pb_move_into_pb_cst_app();
 commit;
  -- select * from PB_CST_APP where pca_cstno not like 'PB%';
  
--12、个人会员功能关闭表（PB_CST_ITEM）
  delete from pb_cst_item where pca_cstno not like 'PB%';
  call pb_move_into_PB_CST_ITEM();
  commit;
  -- select * from pb_cst_item where pca_cstno not like 'PB%';



--------------------------企业银行----------------------
--1.企业会员信息（CB_CST_INF）
delete from CB_CST_INF where cif_cstno not like 'CB%';
call cb_move_into_cb_cst_inf();
COMMIT;
 -- select * from CB_CST_INF where cif_cstno not like 'CB%';

--2.企业会员账户信息（CB_ACC_INF）
delete from CB_ACC_INF where aif_cstno not like 'CB%';
 call CB_MOVE_INTO_CB_ACC_INF();
 commit;
 -- select * from CB_ACC_INF where aif_cstno not like 'CB%';

--3.企业会员用户信息（CB_USER_INF）
  delete from CB_USER_INF where uif_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_USER_INF();
  commit;
   -- select * from CB_USER_INF where uif_cstno not like 'CB%';
   
--4.企业会员用户下挂账户信息（CB_USER_ACC）
delete from CB_USER_ACC WHERE UAC_USERID NOT LIKE 'CB%';
call cb_move_into_cb_user_acc();
commit;
 -- select * from CB_USER_ACC WHERE UAC_USERID NOT LIKE 'CB%';

 --5.企业会员认证签约表（CB_CERT_INF）
delete from CB_CERT_INF where cci_cstno not like 'CB%';
CALL CB_MOVE_INTO_CB_CERT_INF();
commit;
 -- select * from CB_CERT_INF where cci_cstno not like 'CB%';

 --6.企业会员收款人名册（CB_CST_PAYEE）
 delete from CB_CST_PAYEE where CCP_CSTNO not like 'CB%';
 call CB_MOVE_INTO_CB_CST_PAYEE();
 commit;
  -- select * from CB_CST_PAYEE where CCP_CSTNO not like 'CB%';
  
 --7.企业会员账户额度控制信息（CB_LIMIT_ACC）
 
  delete from CB_LIMIT_ACC where lia_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_LIMIT_ACC();
  commit;
 -- select * from CB_LIMIT_ACC where lia_cstno not like 'CB%';
 
--13.企业会员普通转账指令流水（CB_TRANFLOW）
delete from CB_TRANFLOW where TFL_CSTNO  not like 'CB%';
CALL CB_MOVE_INTO_CB_TRANFLOW();
COMMIT;
 -- select * from CB_TRANFLOW where  TFL_CSTNO  not like 'CB%';


--14.企业会员预约转账流水信息（CB_PRE_TRANFLOW）
delete from CB_PRE_TRANFLOW 
WHERE PTF_FLOWNO IN
(SELECT TFL_FLOWNO FROM CB_TRANFLOW WHERE TFL_CSTNO NOT LIKE 'CB%');

CALL CB_MOVE_INTO_CB_PRE_TRANFLOW();
COMMIT;

/*
select * from CB_PRE_TRANFLOW 
WHERE PTF_FLOWNO IN
(SELECT TFL_FLOWNO FROM CB_TRANFLOW WHERE TFL_CSTNO NOT LIKE 'CB%');
  */
--15.企业会员定活互转流水信息（CB_FIN_FIXED） 
delete from  CB_FIN_FIXED WHERE FFX_CSTNO NOT LIKE 'CB%';
CALL CB_MOVE_INTO_CB_FIN_FIXED();
COMMIT;
 -- select * from CB_FIN_FIXED WHERE FFX_CSTNO NOT LIKE 'CB%';

--16.企业会员通知存款开立指令流水信息(CB_INFORM_DEPOSIT_OPEN)
delete from CB_INFORM_DEPOSIT_OPEN WHERE IDO_CSTNO not LIKE 'CB%';
CALL CB_MOVE_INTO_CB_INFORM_OPEN();
COMMIT;
 -- select * from CB_INFORM_DEPOSIT_OPEN WHERE IDO_CSTNO not LIKE 'CB%';

--17.企业会员通知存款支取指令流水信息 （CB_INFORM_WITHDRAW）

delete FROM CB_INFORM_WITHDRAW where CIW_CSTNO NOT LIKE 'CB%';
CALL CB_MOVE_INTO_CB_WITHDRAW();
COMMIT;
 -- select * from CB_INFORM_WITHDRAW where CIW_CSTNO NOT LIKE 'CB%';

--20.企业会员代发业务流水（CB_WAGE_FLOW）
delete from  CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%';
CALL CB_MOVE_INTO_CB_WAGE_FLOW();
COMMIT;
 -- select * from CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%';

--21.企业会员代发业务明细信息（CB_WAGE_DETAIL）

DELETE
FROM CB_WAGE_DETAIL
WHERE WDT_BATCHNO IN(
SELECT WFL_BATCHNO FROM CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%'
);
CALL CB_MOVE_INTO_CB_WAGE_DETAIL();
COMMIT;

/*
SELECT *
FROM CB_WAGE_DETAIL
WHERE WDT_BATCHNO IN(
SELECT WFL_BATCHNO FROM CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%'
);
*/

  
--22.企业操作员开通交易表(CB_USER_BSN)  
  delete from CB_USER_BSN where ubn_userid not like 'CB%';
  call CB_MOVE_INTO_CB_USER_BSN();
  commit;
  -- select * from CB_USER_BSN where ubn_userid not like 'CB%';
  
  
--23.企业授权模式

 --企业授权金额区间表(CB_AUTH_AREA)

 delete 
  from CB_AUTH_AREA
 where aar_id in
       (select adf_id from CB_AUTH_DEF where adf_cstno not like 'CB%');

 --企业授权模式定义表(CB_AUTH_DEF)
 delete from CB_AUTH_DEF where adf_cstno not like 'CB%';
 --企业客户开通交易表(CB_CST_BSN)
 delete from CB_CST_BSN where cbn_cstno not like 'CB%';
 --企业授权模式关联表(CB_AUTH_REF)
 delete from CB_AUTH_REF where arf_cstno not like 'CB%';

call CB_MOVE_INTO_CB_AUTH_INFOS();
commit;

 /*
 --企业授权金额区间表(CB_AUTH_AREA)
 SELECT * 
  from CB_AUTH_AREA
 where aar_id in
       (select adf_id from CB_AUTH_DEF where adf_cstno not like 'CB%');
 --企业授权模式定义表(CB_AUTH_DEF)
 SELECT *  from CB_AUTH_DEF where adf_cstno not like 'CB%';
 --企业客户开通交易表(CB_CST_BSN)
 SELECT *  from CB_CST_BSN where cbn_cstno not like 'CB%';
 --企业授权模式关联表(CB_AUTH_REF)
 SELECT *  from CB_AUTH_REF where arf_cstno not like 'CB%';
 */
 
---25.企业会员开户网点表(CB_CST_NODE)
  delete from CB_CST_NODE where cnd_cstno not like 'CB%';
  call cb_move_into_cb_cst_node();
  commit;
   -- select * from Cb_User_Inf;

---26.被筛减的经办操作员所提交的交易记录，全部归到被移植的最近一次做交易的经办员名下
  call CB_MOVE_RESET_SUBMIT_USER();
  commit;
  
--27.企业授权历史(CB_AUTH_HISTORY)
  delete from CB_AUTH_HISTORY where ath_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_AUTH_HISTORY();
  commit;
   -- select * from CB_AUTH_HISTORY where ath_cstno not like 'CB%';

--28.企业公转私限制(CB_TRANS_LIMIT)
  delete from CB_TRANS_LIMIT where tlt_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_TRANS_LIMIT();
  commit;
  -- select * from CB_TRANS_LIMIT where tlt_cstno not like 'CB%';

-----企业客户信息处理
UPDATE CB_USER_INF USR SET USR.UIF_RIGHT = REGEXP_REPLACE(UIF_RIGHT, '1', '0', 3, 1 ) where substr(UIF_RIGHT, 3, 1) = '1';
commit;

UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市荣亨百福贸易有限公司' WHERE  acc.aif_accno = '8001044000000001894';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市骉腾供应链有限公司' WHERE  acc.aif_accno = '8001044000000000129';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市金展国际珠宝广场有限公司' WHERE  acc.aif_accno = '8001024000000001214';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市宝安区石岩尚品石材销售部' WHERE  acc.aif_accno = '8001044000000000701';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市深商微友汇投资股份有限公司' WHERE  acc.aif_accno = '8001034000000002455';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市骃骐实业有限公司' WHERE  acc.aif_accno = '8001044000000001869';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市杰特电信控股有限公司' WHERE  acc.aif_accno = '8001024000000001159';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市亚信创兴贸易有限公司' WHERE  acc.aif_accno = '8001074000000000250';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳力天丰医药科技有限公司' WHERE  acc.aif_accno = '8001014000000004192';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市赛尔号科技有限公司' WHERE  acc.aif_accno = '8001034000000002893';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳中龙国际传媒有限公司' WHERE  acc.aif_accno = '8001034000000000641';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市中汇国华实业有限公司' WHERE  acc.aif_accno = '8001034000000000150';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市福富通贸易有限公司' WHERE  acc.aif_accno = '8001024000000004318';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳新旋塑胶五金制品有限公司' WHERE  acc.aif_accno = '8001014000000004027';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市万棱电缆发展有限公司' WHERE  acc.aif_accno = '8001024000000002735';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市特速商贸有限公司' WHERE  acc.aif_accno = '8001024000000002759';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市智融融资担保有限公司' WHERE  acc.aif_accno = '8001014000000002663';
UPDATE cb_acc_inf acc SET acc.aif_name = '上达电子（深圳）股份有限公司' WHERE  acc.aif_accno = '8001064000000000499';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市埃顿医疗实业有限公司' WHERE  acc.aif_accno = '8001014000000003424';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市鸿燊实业有限公司' WHERE  acc.aif_accno = '8001074000000000493';
UPDATE cb_acc_inf acc SET acc.aif_name = '东莞市酷点电池有限公司' WHERE  acc.aif_accno = '8001054000000000937';
UPDATE cb_acc_inf acc SET acc.aif_name = '芜湖华融财富鹏晞投资中心（有限合伙）' WHERE  acc.aif_accno = '8001074000000000742';
UPDATE cb_acc_inf acc SET acc.aif_name = '揭阳市水电工程有限公司' WHERE  acc.aif_accno = '8001014000000002286';
UPDATE cb_acc_inf acc SET acc.aif_name = '深圳市赫德工程担保有限公司' WHERE  acc.aif_accno = '8001024000000006455';
COMMIT;


--将企业客户通知存款功能改为层层利
update CB_USER_BSN set UBN_BSNCODE='13000401' where UBN_BSNCODE='13000201';
update CB_USER_BSN set UBN_BSNCODE='13000402' where UBN_BSNCODE='13000204';
update CB_USER_BSN set UBN_BSNCODE='13000403' where UBN_BSNCODE='13000205';

update CB_CST_BSN set CBN_BSNCODE='13000401' where CBN_BSNCODE='13000201';
update CB_CST_BSN set CBN_BSNCODE='13000402' where CBN_BSNCODE='13000204';
update CB_CST_BSN set CBN_BSNCODE='13000403' where CBN_BSNCODE='13000205';


update CB_AUTH_REF set ARF_BSNCODE='13000401' where ARF_BSNCODE='13000201';
update CB_AUTH_REF set ARF_BSNCODE='13000402' where ARF_BSNCODE='13000204';
commit;

-----个人客户信息处理
delete from pb_acc_inf acct
 where acct.aif_cstno not in
       (select distinct cst.cip_cstno from pb_cst_inf cst);

delete from pb_cst_curr_limit ccl
 where ccl.ccl_cstno not in
       (select distinct cst.cip_cstno from pb_cst_inf cst);

delete from pb_cst_trans_limit ccl
 where ccl.ccl_cstno not in
       (select distinct cst.cip_cstno from pb_cst_inf cst);

delete from pb_cert_inf cert
 where cert.pci_cstno not in
       (select distinct cst.cip_cstno from pb_cst_inf cst);
commit;


  UPDATE pb_cst_inf cst SET (cst.cip_charid, cst.cip_mobile) = (
  SELECT  (case LG_MD.LOGIN_TYPE
             when '2' then LG_MD.LOGIN_NAME
             else
              CERT.PCI_CERTID
           end) as CHARID,
           CERT.PCI_CERTID AS mobile
    FROM PB_CERT_INF CERT, PERBANK_DINGYE.T_LOGIN_MODE LG_MD
   WHERE CERT.PCI_CSTNO = LG_MD.CID
     AND CERT.PCI_MEDIUMTYPE = '3'
     AND CERT.PCI_CSTNO IN(SELECT CST2.CIP_CSTNO FROM pb_cst_inf cst2 WHERE cst2.cip_mobile IS NULL)
     AND CERT.PCI_CSTNO = cst.cip_cstno)
  WHERE cst.cip_cstno IN(SELECT CIP_CSTNO FROM pb_cst_inf WHERE cip_mobile IS NULL) AND
        cst.cip_cstno IN(SELECT PCI_CSTNO FROM  PB_CERT_INF WHERE PCI_MEDIUMTYPE = '3');
  COMMIT;


  UPDATE pb_cst_inf cst SET (cst.cip_charid, cst.cip_mobile) = (
  SELECT  (case LG_MD.LOGIN_TYPE
           when '2' then LG_MD.LOGIN_NAME
           else
            TBL.CONTACT_ID
         end) as CHARID,
         TBL.CONTACT_ID
    FROM FM_CLIENT_CONTACT_TBL TBL, PB_CST_INF CST1, PERBANK_DINGYE.T_LOGIN_MODE LG_MD
   WHERE 
   CST1.CIP_CIFNO = TBL.CLIENT_NO
   AND CST1.CIP_CSTNO = LG_MD.CID
   AND CST1.CIP_MOBILE IS NULL
   AND TBl.pref_Flag = 'Y'
   AND CST1.CIP_CSTNO = cst.cip_cstno)
   WHERE cst.cip_cstno IN(SELECT cip_cstno FROM pb_cst_inf cst WHERE cst.cip_mobile IS NULL);
   COMMIT;


UPDATE pb_cst_inf cst SET cst.cip_mobile = '13509659886' WHERE cst.cip_cifno = '10000001123';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15869751118' WHERE cst.cip_cifno = '10000026552';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13632911379' WHERE cst.cip_cifno = '10000017951';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13751912417' WHERE cst.cip_cifno = '10000021490';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '18820289755' WHERE cst.cip_cifno = '10000024177';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13022042758' WHERE cst.cip_cifno = '10000024917';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13652359843' WHERE cst.cip_cifno = '10000025521';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '18926475336' WHERE cst.cip_cifno = '10000008680';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '18929394511' WHERE cst.cip_cifno = '10000016102';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13590455503' WHERE cst.cip_cifno = '10000028901';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '17772407068' WHERE cst.cip_cifno = '10000022309';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15899772942' WHERE cst.cip_cifno = '10000002607';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15919938530' WHERE cst.cip_cifno = '10000002664';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13265863341' WHERE cst.cip_cifno = '10000015363';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15617237275' WHERE cst.cip_cifno = '10000015378';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13530402935' WHERE cst.cip_cifno = '10000015439';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13620238129' WHERE cst.cip_cifno = '10000015481';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15989379189' WHERE cst.cip_cifno = '10000015523';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '18899853570' WHERE cst.cip_cifno = '10000015551';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '17050119840' WHERE cst.cip_cifno = '10000006085';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '18665302678' WHERE cst.cip_cifno = '10000006351';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15815555151' WHERE cst.cip_cifno = '10000014636';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13430696569' WHERE cst.cip_cifno = '10000013126';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13603066838' WHERE cst.cip_cifno = '10000004403';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13923485888' WHERE cst.cip_cifno = '10000002070';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13537574385' WHERE cst.cip_cifno = '10000017717';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13530288907' WHERE cst.cip_cifno = '10000017724';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13048905895' WHERE cst.cip_cifno = '10000002511';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13717059520' WHERE cst.cip_cifno = '10000002595';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13682349309' WHERE cst.cip_cifno = '10000015401';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15516862063' WHERE cst.cip_cifno = '10000015472';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '15118059466' WHERE cst.cip_cifno = '10000015529';
UPDATE pb_cst_inf cst SET cst.cip_mobile = '13802574917' WHERE cst.cip_cifno = '10000002033';
COMMIT;


UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000001123') WHERE cip_cifno = '10000001123';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000026552') WHERE cip_cifno = '10000026552';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000017951') WHERE cip_cifno = '10000017951';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000021490') WHERE cip_cifno = '10000021490';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000024177') WHERE cip_cifno = '10000024177';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000024917') WHERE cip_cifno = '10000024917';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000025521') WHERE cip_cifno = '10000025521';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000008680') WHERE cip_cifno = '10000008680';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000016102') WHERE cip_cifno = '10000016102';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000028901') WHERE cip_cifno = '10000028901';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000022309') WHERE cip_cifno = '10000022309';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000002607') WHERE cip_cifno = '10000002607';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000002664') WHERE cip_cifno = '10000002664';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015363') WHERE cip_cifno = '10000015363';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015378') WHERE cip_cifno = '10000015378';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015439') WHERE cip_cifno = '10000015439';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015481') WHERE cip_cifno = '10000015481';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015523') WHERE cip_cifno = '10000015523';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015551') WHERE cip_cifno = '10000015551';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000006085') WHERE cip_cifno = '10000006085';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000006351') WHERE cip_cifno = '10000006351';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000014636') WHERE cip_cifno = '10000014636';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000013126') WHERE cip_cifno = '10000013126';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000004403') WHERE cip_cifno = '10000004403';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000002070') WHERE cip_cifno = '10000002070';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000017717') WHERE cip_cifno = '10000017717';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000017724') WHERE cip_cifno = '10000017724';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000002511') WHERE cip_cifno = '10000002511';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000002595') WHERE cip_cifno = '10000002595';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015401') WHERE cip_cifno = '10000015401';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015472') WHERE cip_cifno = '10000015472';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000015529') WHERE cip_cifno = '10000015529';
UPDATE pb_cst_inf cst SET cst.cip_charid = (SELECT (case LG_MD.LOGIN_TYPE when '2' then LG_MD.LOGIN_NAME ELSE  cst.cip_mobile end) as CHARID FROM  pb_cst_inf cst, PERBANK_DINGYE.T_LOGIN_MODE LG_MD WHERE cst.cip_cstno = LG_MD.cid AND cst.cip_cifno = '10000002033') WHERE cip_cifno = '10000002033';
COMMIT;

UPDATE pb_cert_inf cert SET cert.pci_certid = '13509659886' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000001123');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15869751118' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000026552');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13632911379' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000017951');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13751912417' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000021490');
UPDATE pb_cert_inf cert SET cert.pci_certid = '18820289755' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000024177');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13022042758' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000024917');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13652359843' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000025521');
UPDATE pb_cert_inf cert SET cert.pci_certid = '18926475336' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000008680');
UPDATE pb_cert_inf cert SET cert.pci_certid = '18929394511' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000016102');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13590455503' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000028901');
UPDATE pb_cert_inf cert SET cert.pci_certid = '17772407068' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000022309');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15899772942' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000002607');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15919938530' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000002664');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13265863341' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015363');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15617237275' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015378');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13530402935' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015439');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13620238129' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015481');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15989379189' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015523');
UPDATE pb_cert_inf cert SET cert.pci_certid = '18899853570' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015551');
UPDATE pb_cert_inf cert SET cert.pci_certid = '17050119840' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000006085');
UPDATE pb_cert_inf cert SET cert.pci_certid = '18665302678' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000006351');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15815555151' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000014636');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13430696569' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000013126');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13603066838' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000004403');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13923485888' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000002070');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13537574385' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000017717');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13530288907' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000017724');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13048905895' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000002511');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13717059520' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000002595');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13682349309' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015401');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15516862063' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015472');
UPDATE pb_cert_inf cert SET cert.pci_certid = '15118059466' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000015529');
UPDATE pb_cert_inf cert SET cert.pci_certid = '13802574917' WHERE cert.PCI_MEDIUMTYPE = '3' AND cert.pci_cstno = (SELECT cst.cip_cstno FROM pb_cst_inf cst WHERE cst.cip_cifno = '10000002033');
COMMIT;

UPDATE PB_CST_INF CST
   SET CST.CIP_STT = '4'
 WHERE CST.CIP_CSTNO IN
       (SELECT T.网银客户号
          FROM (SELECT CST.CIP_CHARID AS 登录ID,
                       CST.CIP_NAME   AS 客户名称,
                       CST.CIP_MOBILE AS 手机号码,
                       CST.CIP_CSTNO  AS 网银客户号,
                       CST.CIP_CIFNO  AS 核心客户号
                  FROM PB_CST_INF CST
                 WHERE CST.CIP_MOBILE IN
                       (SELECT CIP_MOBILE
                          FROM PB_CST_INF T
                         WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                         GROUP BY T.CIP_MOBILE
                        HAVING COUNT(CIP_MOBILE) > 1)
                UNION
                SELECT CST.CIP_CHARID AS 登录ID,
                       CST.CIP_NAME   AS 客户名称,
                       CST.CIP_MOBILE AS 手机号码,
                       CST.CIP_CSTNO  AS 网银客户号,
                       CST.CIP_CIFNO  AS 核心客户号
                  FROM PB_CST_INF CST
                 WHERE CST.CIP_CHARID IN
                       (SELECT CIP_CHARID
                          FROM PB_CST_INF T
                         WHERE T.CIP_CSTNO NOT LIKE 'PB%'
                         GROUP BY T.CIP_CHARID
                        HAVING COUNT(CIP_CHARID) > 1)) T,
               (SELECT AIF_CSTNO, TO_CHAR(WM_CONCAT(ACC.AIF_ACCNO)) AS 账户号
                  FROM PB_ACC_INF ACC
                 GROUP BY ACC.AIF_CSTNO) ACCT
         WHERE T.网银客户号 = ACCT.AIF_CSTNO);
COMMIT;