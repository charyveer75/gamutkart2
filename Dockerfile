FROM ubuntu:18.04 
MAINTAINER "madhu"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-8.5.38.tar.gz /root
COPY target/gamutkart.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT /root/apache-tomcat-8.5.38/bin/startup.sh && bash

