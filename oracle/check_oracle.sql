whenever sqlerror exit 1;
connect system/oracle@XE
select 1 from dual;
exit 0;