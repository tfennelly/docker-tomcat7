FROM ubuntu

RUN apt-get -qq update
RUN apt-get -qq upgrade

RUN apt-get -qq install openjdk-7-jre
RUN apt-get -qq install wget

RUN wget http://www.whoishostingthis.com/mirrors/apache/tomcat/tomcat-7/v7.0.61/bin/apache-tomcat-7.0.61.tar.gz
RUN tar -xzf apache-tomcat-7.0.61.tar.gz
RUN ln -s /apache-tomcat-7.0.61 tomcat7

CMD ["/tomcat7/bin/catalina.sh", "run"]
EXPOSE 8080

#
# Build FROM this image
# ADD war files to the "/tomcat7/webapps" dir
#
