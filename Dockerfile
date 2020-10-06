FROM postgres:10.0-alpine

RUN apk update
RUN apk add openjdk8

USER postgres
RUN chmod 0700 /var/lib/postgresql/data &&\
    initdb /var/lib/postgresql/data &&\
    echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf &&\
    echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf &&\
    pg_ctl start &&\
    psql -c "CREATE USER camunda WITH SUPERUSER PASSWORD 'camunda';" &&\
    createdb -O camunda camunda
EXPOSE 5432

# run app
USER root
EXPOSE 8080
ARG APP_HOME=/app
COPY /target/newbpm-1.0.0-SNAPSHOT.jar  $APP_HOME/newbpm.jar
WORKDIR $APP_HOME
ENTRYPOINT java -jar ./newbpm.jar