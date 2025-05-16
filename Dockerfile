# Use an official OpenJDK image as the base
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR into the container
COPY target/spring-boot-jpa-h2-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
