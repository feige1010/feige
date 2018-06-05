echo "start......"
sqlplus ZHIJIANG_BANK/ZHIJIANG_BANK@f1ebank << EOF
@./insertData.sql
disconnect
quit
EOF
echo "end......"