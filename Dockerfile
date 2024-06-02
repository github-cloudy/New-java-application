# Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11

# Copy the WAR file into the Tomcat webapps directory
COPY target/java-application-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080 for the Tomcat server
EXPOSE 8080

# Set the default command to run Tomcat on container startup
CMD ["catalina.sh", "run"]

