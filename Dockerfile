FROM alexeiled/docker-oracle-xe-11g

MAINTAINER Andreas Schilling <andreas_schilling@gmx.net>

RUN apt-get install -y curl
RUN curl -O http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/3.1/flyway-commandline-3.1.tar.gz
RUN tar -xzf flyway-commandline-3.1.tar.gz

WORKDIR flyway-3.1

ADD ojdbc6.jar flyway-3.1/jars/

