# Base image
FROM eclipse-temurin:17-jdk


# App के लिए folder
WORKDIR /app

# Jar copy
COPY target/*.jar app.jar

# Port
EXPOSE 8080

# Run app
ENTRYPOINT ["java","-jar","app.jar"]
