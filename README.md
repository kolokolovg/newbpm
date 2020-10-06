# newbpm
###### Run as local spring-boot app:

Configure DB:
1. create database and user same in application.yml
2. or change values in application.yaml

Run project:
` mvn clean spring-boot:run`

Open web-app: http://localhost:8080/camunda/app/

###### Run as docker container

Use Dockerfile  
Use `docker-compose up --build` or run docker-compose.yml from IDE