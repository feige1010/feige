echo "start......"
sqlplus ZHONGNING_BANK/ZHONGNING_BANK@ebank << EOF
@./dataMoveBatch.sql
disconnect
quit
EOF
echo "end......"