# Use an OpenJDK-based image to run the Java application
FROM openjdk:11-jre-slim

# Expose the port your app will run on (adjust if needed)
EXPOSE 8080

# Set an environment variable for the app location
ENV APP_HOME /usr/src/app

# Copy the JAR file into the container at $APP_HOME
COPY target/your-app-name.jar $APP_HOME/app.jar

# Set the working directory
WORKDIR $APP_HOME

# Run the .jar file when the container starts
CMD ["java", "-jar", "app.jar"]
