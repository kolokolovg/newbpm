FROM openjdk:8-jdk-alpine
MAINTAINER gleb
EXPOSE 8080
ARG APP_HOME=/app
COPY /target/newbpm-1.0.0-SNAPSHOT.jar  $APP_HOME/newbpm.jar
WORKDIR $APP_HOME
ENTRYPOINT java -jar ./newbpm.jar