echo "start......"
sqlplus ZHONGNINGV1_BANK/ZHONGNINGV1_BANK@ebank << EOF
@./dataMoveBatch.sql
disconnect
quit
EOF
echo "end......"