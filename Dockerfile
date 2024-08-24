# Use a base image with Java and Maven installed
FROM maven:3.8.6-openjdk-11-slim AS build

# Set the working directory
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package

# Use a lighter base image for the final application
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file
COPY --from=build /app/target/spring-boot-app-0.0.1-SNAPSHOT.jar app.jar

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
