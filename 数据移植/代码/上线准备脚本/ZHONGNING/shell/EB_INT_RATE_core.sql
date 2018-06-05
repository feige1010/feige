DROP VIEW EB_INT_RATE;
CREATE VIEW
    EB_INT_RATE
    (
        PROD_TYPE,
        INT_TYPE_DESC,
        TERM_PERIOD,
        TERM_TYPE,
        BALANCE,
        ACTUAL_RATE,
        EFFECT_DATE,
        INT_TYPE,
        RN
    ) AS
    (
        SELECT
            "PROD_TYPE",
            "INT_TYPE_DESC",
            "TERM_PERIOD",
            "TERM_TYPE",
            "BALANCE",
            "ACTUAL_RATE",
            "EFFECT_DATE",
            "INT_TYPE",
            "RN"
        FROM
            (
                SELECT
                    fir.int_type                                                            prod_type,
                    DECODE (fir.int_type, 'HQI', '活期存款', 'TZ1', '一天通知存款', 'TZ7', '七天通知存款' ) int_type_desc,
                    NULL                                                                    term_period,
                    NULL                                                                    term_type,
                    balance,
                    actual_rate,
                    fir.effect_date,
                    fir.int_type,
                    ROW_NUMBER () OVER (PARTITION BY fir.int_type ORDER BY effect_date DESC) rn
                FROM
                    fm_int_rate fir
                WHERE
                    fir.int_type IN ('HQI',
                                     'TZ1',
                                     'TZ7')
                AND fir.ccy = 'CNY'
                AND fir.effect_date > TO_DATE ('20110101', 'YYYYMMDD')
                AND TRUNC (fir.effect_date) <= SYSDATE
                UNION ALL
                SELECT
                    rim.term_type || LPAD (TO_CHAR (rim.term_period), 2, '0')                     prod_type,
                    '整存整取' || rim.term_period || DECODE (rim.term_type, 'M', '个月', 'Y', '年', '天') int_type_desc,
                    rim.term_period,
                    rim.term_type,
                    rim.balance,
                    rim.int_rate,
                    rim.effect_date,
                    rim.int_type,
                    ROW_NUMBER () OVER (PARTITION BY rim.term_type || rim.term_period ORDER BY effect_date DESC) rn
                FROM
                    rb_int_matrix rim
                WHERE
                    rim.int_type = 'DR1'
                AND rim.ccy = 'CNY'
                AND rim.effect_date > TO_DATE ('20110101', 'YYYYMMDD')
                AND TRUNC (rim.effect_date) <= SYSDATE)
        WHERE
            rn = 1
    ) ;