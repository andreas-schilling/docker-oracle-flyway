FROM alexeiled/docker-oracle-xe-11g

MAINTAINER Andreas Schilling <andreas_schilling@gmx.net>

ADD start.sh /
RUN chmod +x start.sh

RUN apt-get install -y curl
RUN curl -O http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/3.1/flyway-commandline-3.1.tar.gz
RUN tar -xzf flyway-commandline-3.1.tar.gz

RUN chmod +x flyway-3.1/flyway
ADD ojdbc6.jar flyway-3.1/drivers/
ADD sql/* sql/
ADD oracle/* oracle/
RUN chmod +x oracle/wait_for_oracle.sh

ADD conf/* flyway-3.1/conf/
ADD migration/* flyway-3.1/sql/

CMD bash -C './start.sh';'bash'
