SELECT DISTINCT FIRM.CNAME �ͻ�����,
                FIRM.CONTACT ��ϵ��,
                NVL(FIRM.MOBILE, FIRM.PHONE) AS ��ϵ�绰,
                (CASE BIZ_CODE
                  WHEN 'CASHPAY' THEN
                   '��˽����'
                  WHEN 'INNER_TRANS' THEN
                   '�ڲ�ת��'
                  WHEN 'TRANSFER' THEN
                   '����ת��'
                  WHEN 'PAYOFF' THEN
                   '��������'
                END) AS ��������,
                (CASE TRANS_STATUS
                   WHEN '0' THEN '����Ȩ'
                   WHEN '1' THEN '����Ȩ'
                   WHEN '2' THEN '���׳ɹ�'
                   WHEN '3' THEN '����ʧ��'
                   WHEN '4' THEN '���ֳɹ�'
                   WHEN '5' THEN '���δ֪'
                   WHEN '6' THEN 'ָ���'
                   WHEN '7' THEN 'ָ�����'
                   WHEN '8' THEN '���д���Ȩ'
                   WHEN '9' THEN '�˻�ָ��'
                 END
                 ) as ����״̬,
                START_TIME as �����ύʱ��
  FROM T_FIRM FIRM,
       (SELECT EN.NCID, BIZ_CODE, START_TIME, TS.TRANS_STATUS
          FROM T_BF_ENTRY EN, T_TRANSFER TS
         WHERE EN.ID_ENTRY = TS.ID_ENTRY
           AND EN.ID_ENTRY IN (SELECT ID_ENTRY
                               FROM T_BF_CURRENT_STEP
                               WHERE STEP_STATUS = 'UNDERWAY')) BIZ
 WHERE FIRM.NCID = BIZ.NCID
 ORDER BY FIRM.CNAME, ����״̬, START_TIME;



--����
SELECT DISTINCT FIRM.CNAME �ͻ�����,
       FIRM.CONTACT ��ϵ��,
       NVL(FIRM.MOBILE, FIRM.PHONE) AS ��ϵ�绰,
       (CASE BIZ_CODE
          WHEN 'CASHPAY' THEN '��˽����'
          WHEN 'INNER_TRANS' THEN '�ڲ�ת��'
          WHEN 'TRANSFER' THEN '����ת��'
          WHEN 'PAYOFF' THEN '��������'
       END) AS ��������
  FROM FIRMBANK_BIYANG.T_FIRM FIRM,
       (SELECT NCID, BIZ_CODE
          FROM FIRMBANK_BIYANG.T_BF_ENTRY 
         WHERE ID_ENTRY IN (SELECT ID_ENTRY
                              FROM FIRMBANK_BIYANG.T_BF_CURRENT_STEP
                             WHERE STEP_STATUS = 'UNDERWAY')
               AND UB_CODE IN('00021')
                             ) BIZ
 WHERE FIRM.NCID = BIZ.NCID AND  UB_CODE IN('00021');

 --����
SELECT DISTINCT FIRM.CNAME �ͻ�����,
       FIRM.CONTACT ��ϵ��,
       NVL(FIRM.MOBILE, FIRM.PHONE) AS ��ϵ�绰,
       (CASE BIZ_CODE
          WHEN 'CASHPAY' THEN '��˽����'
          WHEN 'INNER_TRANS' THEN '�ڲ�ת��'
          WHEN 'TRANSFER' THEN '����ת��'
          WHEN 'PAYOFF' THEN '��������'
       END) AS ��������
  FROM FIRMBANK_ZHENGYANG.T_FIRM FIRM,
       (SELECT NCID, BIZ_CODE
          FROM FIRMBANK_ZHENGYANG.T_BF_ENTRY 
         WHERE ID_ENTRY IN (SELECT ID_ENTRY
                              FROM FIRMBANK_ZHENGYANG.T_BF_CURRENT_STEP
                             WHERE STEP_STATUS = 'UNDERWAY')
               AND UB_CODE IN('00024')
                             ) BIZ
 WHERE FIRM.NCID = BIZ.NCID AND  UB_CODE IN('00024');