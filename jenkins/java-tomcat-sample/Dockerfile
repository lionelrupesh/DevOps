FROM tomcat:9.0
ADD **/*.war /usr/local/tomcat/webapps/
RUN mv /usr/local/tomcat/webapps/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
