#!/bin/bash/
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#Dockerfile for build and run application on containers

#singe_stage

FROM maven: 3.9 open-jdk-17
WORKDIR /app
COPY ..
RUN mvn clean package
ENTRYPOINT ["java", "-jar", "app/target/app.jar"]
CMD["--server.port=80"]



#multi_stage

#stage 1
FROM maven: 3.9 open-jdk-17
WORKDIR /app
COPY ..
RUN mvn clean packages


#stage 2

FROM maven: open-jdk
WORKDIR /app
COPY --from=build app/target/app.jar
ENTRYPOINT["java", "-jar", "/target/app.jar"]
CMD[--server.port=80]

