CREATE USER WICHTLR PROFILE DEFAULT IDENTIFIED BY WICHTLR DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP ACCOUNT UNLOCK;
GRANT CONNECT, RESOURCE TO WICHTLR;
GRANT CREATE SESSION TO WICHTLR;