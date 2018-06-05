@./utf/sql/IM_MOVE_INTO_REPORT.prc;
@./utf/sql/IM_PCKG_REPORT_DAILY_CBTRANS.bdy;


TRUNCATE TABLE CB_BATCH_FLOW;

@./utf/sql/PB_ACC_INF.sql;
@./utf/sql/PB_CERT_INF.sql;
@./utf/sql/PB_CST_APP.sql;
@./utf/sql/PB_CST_CURR_LIMIT.sql;
@./utf/sql/PB_CST_TRANS_LIMIT.sql;
@./utf/sql/PB_CST_INF.sql;
@./utf/sql/PB_CST_ITEM.sql;
@./utf/sql/PB_ELECTRONIC_BILL.sql;
@./utf/sql/PB_FIX_CURRENT_TRAN.sql;
@./utf/sql/PB_REL_CST_BOOK.sql;
@./utf/sql/PB_TRANSFER.sql;
@./utf/sql/PB_TRAN_FLOW.sql;
@./utf/sql/CB_ACC_INF.sql;
@./utf/sql/CB_AUTH_HISTORY.sql;
@./utf/sql/CB_AUTH_DEF.sql;
@./utf/sql/CB_AUTH_AREA.sql;
@./utf/sql/CB_CST_BSN.sql;
@./utf/sql/CB_AUTH_REF.sql;
@./utf/sql/CB_CERT_INF.sql;
@./utf/sql/CB_CST_INF.sql;
@./utf/sql/CB_CST_NODE.sql;
@./utf/sql/CB_CST_PAYEE.sql;
@./utf/sql/CB_LIMIT_ACC.sql;
@./utf/sql/CB_PRE_TRANFLOW.sql;
@./utf/sql/CB_USER_ACC.sql;
@./utf/sql/CB_USER_BSN.sql;
@./utf/sql/CB_USER_INF.sql;
@./utf/sql/CB_WAGE_DETAIL.sql;
@./utf/sql/CB_TRANFLOW.sql;
@./utf/sql/CB_FIN_FIXED.sql;
@./utf/sql/CB_INFORM_DEPOSIT_OPEN.sql;
@./utf/sql/CB_INFORM_WITHDRAW.sql;
@./utf/sql/CB_WAGE_FLOW.sql;
@./utf/sql/IM_OPERATION_FLOW.sql;
@./utf/sql/PB_CST_INF_HIS.sql;


CALL IM_MOVE_INTO_REPORT();