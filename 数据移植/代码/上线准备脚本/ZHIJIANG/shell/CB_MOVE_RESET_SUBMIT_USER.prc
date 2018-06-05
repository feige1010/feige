create or replace procedure CB_MOVE_RESET_SUBMIT_USER AS
 --迁移新大陆 企业银行将被筛减的经办操作员所提交的交易记录，
 --全部归到被移植的最近一次做交易的经办员名下。

begin
   FOR transUser IN(SELECT * FROM TEMP_LAST_TRANS_USER)
   LOOP
     --1、企业会员普通转账指令流水（CB_TRANFLOW）
     update CB_TRANFLOW flow
       set flow.tfl_oprno = transUser.userno,
           flow.tfl_oprname = transUser.username
     where flow.tfl_cstno = transUser.cstno
       and tfl_oprno not in
           (select cci_userno from cb_cert_inf where cci_cstno = transUser.cstno);
     commit;

     --2、企业会员定活互转流水信息（CB_FIN_FIXED）
    update CB_FIN_FIXED ffx
           set ffx.ffx_oprno = transUser.userno,
               ffx.ffx_oprname = transUser.username
     where ffx.ffx_cstno = transUser.cstno
       and ffx.ffx_oprno not in
           (select cci_userno from cb_cert_inf where cci_cstno = transUser.cstno);
     commit;
     --3、企业会员通知存款开立指令流水信息(CB_INFORM_DEPOSIT_OPEN)
    update CB_INFORM_DEPOSIT_OPEN ido
           set ido.ido_oprno = transUser.userno,
               ido.ido_oprname = transUser.username
     where ido.ido_cstno = transUser.cstno
       and ido.ido_oprno not in
           (select cci_userno from cb_cert_inf where cci_cstno = transUser.cstno);
     commit;
    --4、企业会员通知存款支取指令流水信息 （CB_INFORM_WITHDRAW）
    update CB_INFORM_WITHDRAW ciw
           set ciw.ciw_oprno = transUser.userno,
               ciw.ciw_oprname = transUser.username
     where ciw.ciw_cstno = transUser.cstno
       and ciw.ciw_oprno not in
           (select cci_userno from cb_cert_inf where cci_cstno = transUser.cstno);
     commit;
    --5.企业会员代发业务流水（CB_WAGE_FLOW）
    update CB_WAGE_FLOW wfl
           set wfl.wfl_oprno = transUser.userno,
               wfl.wfl_oprname = transUser.username
     where wfl.wfl_cstno = transUser.cstno
       and wfl.wfl_oprno not in
           (select cci_userno from cb_cert_inf where cci_cstno = transUser.cstno);
     commit;
   END LOOP;
end;
/
