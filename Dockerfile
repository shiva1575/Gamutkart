FROM ubuntu:16.04
FROM tomcat:7.0
RUN apt-get update
WORKDIR ./usr/local/app
RUN apt-get install -y vim
RUN apt-get install -y git
COPY /home/gamut/.jenkins/workspace/gamutkart1/target/gamutkart.war /usr/local/tomacat/webapps
ENTRYPOINT /usr/local/app/tomcat/bin/sh startup.sh
