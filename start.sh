sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
service oracle-xe start

sleep 10

sqlplus system/oracle @sql/setup_user.sql

/usr/sbin/sshd -D