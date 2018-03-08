FROM ubuntu:16.04
FROM tomcat:7.0
RUN apt-get update
RUN mkdir --p /usr/local/app
WORKDIR ./usr/local/app
RUN apt-get install -y vim
RUN apt-get install -y git
COPY ${WORKSPACE}/target/gamutkart1.war /usr/local/app/tomcat/webapp
ENTRYPOINT /usr/local/app/tomcat/bin/sh startup.sh
