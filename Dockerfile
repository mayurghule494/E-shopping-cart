FROM tomcat:9.0.73-jdk17-temurin

WORKDIR /usr/local/tomcat/webapps/

# Set environment variables
ENV JAVA_OPTS="-Djava.awt.headless=true"

# Copy your WAR file to the Tomcat webapps directory
COPY target/shopping-cart.war /usr/local/tomcat/webapps/

# Expose port 8080 for Tomcat
EXPOSE 8000

# Start Tomcat
CMD ["catalina.sh", "run"]