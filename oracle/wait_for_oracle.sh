﻿#
status="1"
while [ "$status" != "0" ]
do
  sleep 1
  echo 'Trying to access Oracle...'
  sqlplus /nolog @check_oracle.sql
  status=$?
done
