FROM ubuntu:16.04
FROM tomcat:7.0
RUN apt-get update
RUN mkdir /usr/local/app
WORKDIR ./usr/local/app
RUN apt-get install -y vim
RUN apt-get install -y git
COPY ${WORKSPACE}/target/Gamutkart.war /usr/local/app/tomcat/webapp
ENTRYPOINT /usr/local/app/tomcat/bin/sh startup.sh
