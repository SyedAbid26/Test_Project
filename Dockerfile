FROM tomcat:9.0-jdk11

# Remove default Tomcat apps (optional, keeps image clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file built by Maven into Tomcat's webapps directory
COPY target/test.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
