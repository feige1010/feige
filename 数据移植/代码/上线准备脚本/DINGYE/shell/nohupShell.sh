echo "start......"
date "+%Y-%m-%d %H:%M:%S"
sqlplus DINGYEV1_BANK/DINGYEV1_BANK@ebank << EOF
@./dataMoveBatch.sql
disconnect
quit
EOF
date "+%Y-%m-%d %H:%M:%S"
echo "end......"