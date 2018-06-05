echo "start......"
sqlplus ZHIJIANGV1_BANK/ZHIJIANGV1_BANK@ebank << EOF
@./dataMoveBatch.sql
disconnect
quit
EOF
echo "end......"