echo Starting Oracle...

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=XE

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
service oracle-xe start

echo Waiting for Oracle...
./oracle/wait_for_oracle.sh

echo Initialize DB user...
sqlplus system/oracle @sql/setup_user.sql

echo Starting SSH Daemon...
/usr/sbin/sshd -D