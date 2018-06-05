echo "start......"
sqlplus DINGYE_BANK/DINGYE_BANK@f1ebank << EOF
@./insertData.sql
disconnect
quit
EOF
echo "end......"