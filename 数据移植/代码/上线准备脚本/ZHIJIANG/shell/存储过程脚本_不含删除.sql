--------------------------个人银行----------------------
 --1.个人会员信息（PB_CST_INF）
   --delete from pb_cst_inf where cip_cstno not like 'PB%';
   call PB_MOVE_INTO_PB_CST_INF();
   commit;
    -- select * from pb_cst_inf where cip_cstno not like 'PB%';
   
 --2、个人会员账户信息（PB_ACC_INF）
   --delete from PB_ACC_INF where aif_cstno not like 'PB%';
   call PB_MOVE_INTO_PB_ACC_INF();
   commit;
    -- select * from PB_ACC_INF where aif_cstno not like 'PB%';
   
--4、个人会员认证方式信息（PB_CERT_INF）
   --delete from PB_CERT_INF where pci_cstno not like 'PB%';
   call pb_move_into_pb_cert_inf();
   commit;
    -- select * from PB_CERT_INF where pci_cstno not like 'PB%';
 
--5、个人会员收款人名册信息（PB_REL_CST_BOOK）
  --delete from PB_REL_CST_BOOK where pbk_memberid not like 'PB%';
  call pb_move_into_pb_rel_cst_book();
  commit;
   -- select * from PB_REL_CST_BOOK  where pbk_memberid not like 'PB%';
   
--6、个人会员电子回单信息(PB_ELECTRONIC_BILL)
delete from PB_ELECTRONIC_BILL where peb_cstno not like 'PB%';
call PB_MOVE_INTO_PB_ELE_BILL();
commit;
--select * from PB_ELECTRONIC_BILL where peb_cstno not like 'PB%'; 
  
--7.个人会员定活互转流水信息（PB_FIX_CURRENT_TRAN）
 --delete from PB_FIX_CURRENT_TRAN WHERE FCT_CSTNO NOT LIKE 'PB%';
 CALL PB_MOVE_INTO_PB_FIX_CRT_TRAN();
 COMMIT;
  -- select * from PB_FIX_CURRENT_TRAN WHERE FCT_CSTNO NOT LIKE 'PB%';
  
--8.个人会员交易限额信息（PB_CST_CURR_LIMIT）
--delete from PB_CST_CURR_LIMIT where ccl_cstno  NOT LIKE 'PB%';
call pb_move_into_pb_cst_curr_limit();
commit;
--select * from PB_CST_CURR_LIMIT where ccl_cstno  NOT LIKE 'PB%';

--9.个人会员转账交易流水信息（PB_TRANSFER）
--delete from PB_TRANSFER WHERE PTR_MEMBERID not like 'PB%';
CALL PB_MOVE_INTO_PB_TRANSFER();
COMMIT;
-- select * from PB_TRANSFER WHERE PTR_MEMBERID not like 'PB%';

--10.个人会员交易流水信息（PB_TRAN_FLOW）
--delete from PB_TRAN_FLOW WHERE TRF_CSTNO NOT like 'PB%';
CALL PB_MOVE_INTO_PB_TRAN_FLOW();
COMMIT;
 -- select * from PB_TRAN_FLOW WHERE TRF_CSTNO NOT like 'PB%';

--11.个人网银客户渠道表（PB_CST_APP）
 --delete from PB_CST_APP where pca_cstno not like 'PB%';
 call pb_move_into_pb_cst_app();
 commit;
  -- select * from PB_CST_APP where pca_cstno not like 'PB%';
  
--12、个人会员功能关闭表（PB_CST_ITEM）
  --delete from pb_cst_item where pca_cstno not like 'PB%';
  call pb_move_into_PB_CST_ITEM();
  commit;
  -- select * from pb_cst_item where pca_cstno not like 'PB%';



--------------------------企业银行----------------------
--1.企业会员信息（CB_CST_INF）
--delete from CB_CST_INF where cif_cstno not like 'CB%';
call cb_move_into_cb_cst_inf();
COMMIT;
 -- select * from CB_CST_INF where cif_cstno not like 'CB%';

--2.企业会员账户信息（CB_ACC_INF）
--delete from CB_ACC_INF where aif_cstno not like 'CB%';
 call CB_MOVE_INTO_CB_ACC_INF();
 commit;
 -- select * from CB_ACC_INF where aif_cstno not like 'CB%';

--3.企业会员用户信息（CB_USER_INF）
  --delete from CB_USER_INF where uif_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_USER_INF();
  commit;
   -- select * from CB_USER_INF where uif_cstno not like 'CB%';

--4.企业会员用户下挂账户信息（CB_USER_ACC）
--delete from CB_USER_ACC WHERE UAC_USERID NOT LIKE 'CB%';
call cb_move_into_cb_user_acc();
commit;
 -- select * from CB_USER_ACC WHERE UAC_USERID NOT LIKE 'CB%';

 --5.企业会员认证签约表（CB_CERT_INF）
--delete from CB_CERT_INF where cci_cstno not like 'CB%';
CALL CB_MOVE_INTO_CB_CERT_INF();
commit;
 -- select * from CB_CERT_INF where cci_cstno not like 'CB%';

 --6.企业会员收款人名册（CB_CST_PAYEE）
 --delete from CB_CST_PAYEE where CCP_CSTNO not like 'CB%';
 call CB_MOVE_INTO_CB_CST_PAYEE();
 commit;
  -- select * from CB_CST_PAYEE where CCP_CSTNO not like 'CB%';
  
 --7.企业会员账户额度控制信息（CB_LIMIT_ACC）
 
  delete from CB_LIMIT_ACC where lia_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_LIMIT_ACC();
  commit;
 -- select * from CB_LIMIT_ACC where lia_cstno not like 'CB%';
 
--13.企业会员普通转账指令流水（CB_TRANFLOW）
--delete from CB_TRANFLOW where  TFL_CSTNO  not like 'CB%';
CALL CB_MOVE_INTO_CB_TRANFLOW();
COMMIT;
 -- select * from CB_TRANFLOW where  TFL_CSTNO  not like 'CB%';


--14.企业会员预约转账流水信息（CB_PRE_TRANFLOW）
/*delete from CB_PRE_TRANFLOW 
WHERE PTF_FLOWNO IN
(SELECT TFL_FLOWNO FROM CB_TRANFLOW WHERE TFL_CSTNO NOT LIKE 'CB%');
*/

CALL CB_MOVE_INTO_CB_PRE_TRANFLOW();
COMMIT;

/*
select * from CB_PRE_TRANFLOW 
WHERE PTF_FLOWNO IN
(SELECT TFL_FLOWNO FROM CB_TRANFLOW WHERE TFL_CSTNO NOT LIKE 'CB%');
  */
--15.企业会员定活互转流水信息（CB_FIN_FIXED） 
--delete from  CB_FIN_FIXED WHERE FFX_CSTNO NOT LIKE 'CB%';
CALL CB_MOVE_INTO_CB_FIN_FIXED();
COMMIT;
 -- select * from CB_FIN_FIXED WHERE FFX_CSTNO NOT LIKE 'CB%';

--16.企业会员通知存款开立指令流水信息(CB_INFORM_DEPOSIT_OPEN)
--delete from CB_INFORM_DEPOSIT_OPEN WHERE IDO_CSTNO not LIKE 'CB%';
CALL CB_MOVE_INTO_CB_INFORM_OPEN();
COMMIT;
 -- select * from CB_INFORM_DEPOSIT_OPEN WHERE IDO_CSTNO not LIKE 'CB%';

--17.企业会员通知存款支取指令流水信息 （CB_INFORM_WITHDRAW）

--DELETE FROM CB_INFORM_WITHDRAW where CIW_CSTNO NOT LIKE 'CB%';
CALL CB_MOVE_INTO_CB_WITHDRAW();
COMMIT;
 -- select * from CB_INFORM_WITHDRAW where CIW_CSTNO NOT LIKE 'CB%';

--20.企业会员代发业务流水（CB_WAGE_FLOW）
--delete from  CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%';
CALL CB_MOVE_INTO_CB_WAGE_FLOW();
COMMIT;
 -- select * from CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%';

--21.企业会员代发业务明细信息（CB_WAGE_DETAIL）
/*
DELETE
FROM FIRMBANK_ZHIJIANG.t_payoff payoff 
WHERE payoff.SRVRTID IN(
SELECT SRVRTID FROM  CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%'
);
*/
CALL CB_MOVE_INTO_CB_WAGE_DETAIL();
COMMIT;

/*
SELECT *
FROM FIRMBANK_ZHIJIANG.t_payoff payoff 
WHERE payoff.SRVRTID IN(
SELECT SRVRTID FROM  CB_WAGE_FLOW WHERE  WFL_CSTNO NOT like 'CB%'
);
*/

  
--22.企业操作员开通交易表(CB_USER_BSN)  
  --delete from CB_USER_BSN where ubn_userid not like 'CB%';
  call CB_MOVE_INTO_CB_USER_BSN();
  commit;
  -- select * from CB_USER_BSN where ubn_userid not like 'CB%';
  
  
--23.企业授权模式

 --企业授权金额区间表(CB_AUTH_AREA)
 /*
 delete 
  from CB_AUTH_AREA
 where aar_id in
       (select adf_id from CB_AUTH_DEF where adf_cstno not like 'CB%');
 */
 --企业授权模式定义表(CB_AUTH_DEF)
 --delete from CB_AUTH_DEF where adf_cstno not like 'CB%';
 --企业客户开通交易表(CB_CST_BSN)
 --delete from CB_CST_BSN where cbn_cstno not like 'CB%';
 --企业授权模式关联表(CB_AUTH_REF)
 --delete from CB_AUTH_REF where arf_cstno not like 'CB%';

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
  --delete from CB_CST_NODE where cnd_cstno not like 'CB%';
  call cb_move_into_cb_cst_node();
  commit;
   -- select * from Cb_User_Inf;

---26.被筛减的经办操作员所提交的交易记录，全部归到被移植的最近一次做交易的经办员名下
  call CB_MOVE_RESET_SUBMIT_USER();
  commit;
  
--27.企业授权历史(CB_AUTH_HISTORY)
--delete from CB_AUTH_HISTORY where ath_cstno not like 'CB%';
  call CB_MOVE_INTO_CB_AUTH_HISTORY();
  commit;
   -- select * from CB_AUTH_HISTORY where ath_cstno not like 'CB%';
