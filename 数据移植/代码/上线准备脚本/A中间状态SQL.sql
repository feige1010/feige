SELECT DISTINCT FIRM.CNAME 客户姓名,
                FIRM.CONTACT 联系人,
                NVL(FIRM.MOBILE, FIRM.PHONE) AS 联系电话,
                (CASE BIZ_CODE
                  WHEN 'CASHPAY' THEN
                   '对私付款'
                  WHEN 'INNER_TRANS' THEN
                   '内部转账'
                  WHEN 'TRANSFER' THEN
                   '对外转账'
                  WHEN 'PAYOFF' THEN
                   '代发工资'
                END) AS 交易类型,
                (CASE TRANS_STATUS
                   WHEN '0' THEN '待授权'
                   WHEN '1' THEN '已授权'
                   WHEN '2' THEN '交易成功'
                   WHEN '3' THEN '交易失败'
                   WHEN '4' THEN '部分成功'
                   WHEN '5' THEN '结果未知'
                   WHEN '6' THEN '指令撤销'
                   WHEN '7' THEN '指令过期'
                   WHEN '8' THEN '银行待授权'
                   WHEN '9' THEN '退回指令'
                 END
                 ) as 交易状态,
                START_TIME as 交易提交时间
  FROM T_FIRM FIRM,
       (SELECT EN.NCID, BIZ_CODE, START_TIME, TS.TRANS_STATUS
          FROM T_BF_ENTRY EN, T_TRANSFER TS
         WHERE EN.ID_ENTRY = TS.ID_ENTRY
           AND EN.ID_ENTRY IN (SELECT ID_ENTRY
                               FROM T_BF_CURRENT_STEP
                               WHERE STEP_STATUS = 'UNDERWAY')) BIZ
 WHERE FIRM.NCID = BIZ.NCID
 ORDER BY FIRM.CNAME, 交易状态, START_TIME;



--泌阳
SELECT DISTINCT FIRM.CNAME 客户姓名,
       FIRM.CONTACT 联系人,
       NVL(FIRM.MOBILE, FIRM.PHONE) AS 联系电话,
       (CASE BIZ_CODE
          WHEN 'CASHPAY' THEN '对私付款'
          WHEN 'INNER_TRANS' THEN '内部转账'
          WHEN 'TRANSFER' THEN '对外转账'
          WHEN 'PAYOFF' THEN '代发工资'
       END) AS 交易类型
  FROM FIRMBANK_BIYANG.T_FIRM FIRM,
       (SELECT NCID, BIZ_CODE
          FROM FIRMBANK_BIYANG.T_BF_ENTRY 
         WHERE ID_ENTRY IN (SELECT ID_ENTRY
                              FROM FIRMBANK_BIYANG.T_BF_CURRENT_STEP
                             WHERE STEP_STATUS = 'UNDERWAY')
               AND UB_CODE IN('00021')
                             ) BIZ
 WHERE FIRM.NCID = BIZ.NCID AND  UB_CODE IN('00021');

 --正阳
SELECT DISTINCT FIRM.CNAME 客户姓名,
       FIRM.CONTACT 联系人,
       NVL(FIRM.MOBILE, FIRM.PHONE) AS 联系电话,
       (CASE BIZ_CODE
          WHEN 'CASHPAY' THEN '对私付款'
          WHEN 'INNER_TRANS' THEN '内部转账'
          WHEN 'TRANSFER' THEN '对外转账'
          WHEN 'PAYOFF' THEN '代发工资'
       END) AS 交易类型
  FROM FIRMBANK_ZHENGYANG.T_FIRM FIRM,
       (SELECT NCID, BIZ_CODE
          FROM FIRMBANK_ZHENGYANG.T_BF_ENTRY 
         WHERE ID_ENTRY IN (SELECT ID_ENTRY
                              FROM FIRMBANK_ZHENGYANG.T_BF_CURRENT_STEP
                             WHERE STEP_STATUS = 'UNDERWAY')
               AND UB_CODE IN('00024')
                             ) BIZ
 WHERE FIRM.NCID = BIZ.NCID AND  UB_CODE IN('00024');