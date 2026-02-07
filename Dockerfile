# Use an OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy your built JAR/WAR file into container
COPY target/train-ticket-reservation.jar app.jar

# Expose port your app runs on (e.g. 8080)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","app.jar"]
