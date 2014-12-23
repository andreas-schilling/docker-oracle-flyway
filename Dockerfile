FROM alexeiled/docker-oracle-xe-11g

MAINTAINER Andreas Schilling <andreas_schilling@gmx.net>

RUN apt-get install -y curl
RUN curl -O http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/3.1/flyway-commandline-3.1.tar.gz
RUN tar -xzf flyway-commandline-3.1.tar.gz

WORKDIR flyway-3.1

ADD ojdbc6.jar flyway-3.1/drivers/
ADD sql/* sql/

RUN export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
RUN export PATH=$ORACLE_HOME/bin:$PATH
RUN export ORACLE_SID=XE
RUN sqlplus system/oracle @sql/setup_user.sql
