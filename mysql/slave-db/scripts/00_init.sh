# #!/bin/sh
#
# # masterをロックする
# mysql -u root -h mysqld-master --password=dena -e "RESET MASTER;"
# mysql -u root -h mysqld-master --password=dena -e "FLUSH TABLES WITH READ LOCK;"
#
# # masterのDB情報をDumpする
# mysqldump -uroot -h mysqld-master --password=dena --all-databases --master-data --single-transaction > /tmp/master_dump.sql
#
# # dumpしたmasterのDBをslaveにimportする
# mysql -u root --password=dena -e "STOP SLAVE;"
# mysql -u root --password=dena < /tmp/master_dump.sql
#
# # masterに繋いで bin-logのファイル名とポジションを取得する
# log_file=`mysql -u root -h mysqld-master --password=dena -e "SHOW MASTER STATUS\G" | grep File: | awk '{print $2}'`
# pos=`mysql -u root -h mysqld-master --password=dena -e "SHOW MASTER STATUS\G" | grep Position: | awk '{print $2}'`
#
# # slaveの開始
# mysql -u root --password=dena -e "RESET SLAVE;"
# mysql -u root --password=dena -e "CHANGE MASTER TO MASTER_HOST='mysqld-master', MASTER_USER='root', MASTER_PASSWORD='dena', MASTER_LOG_FILE='${log_file}', MASTER_LOG_POS=${pos};"
# mysql -u root --password=dena -e "START SLAVE;"
#
# # masterをunlockする
# mysql -u root --password=dena -h mysqld-master -e "UNLOCK TABLES;"
