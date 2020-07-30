# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0.41-jre8
MAINTAINER mayur
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY code/target/guacamole-example-1.2.0.war  /usr/local/tomcat/webapps/

# Routine for me - optional for your case
EXPOSE 8080

# And run tomcat
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
