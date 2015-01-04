echo Starting Oracle...

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
service oracle-xe start
/usr/sbin/sshd -D

sleep 10

echo Initialize DB user...
sqlplus system/oracle @sql/setup_user.sql
