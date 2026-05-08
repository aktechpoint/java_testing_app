# =========================
# Stage 1 - Build JAR
# =========================
FROM maven:3.9.6-eclipse-temurin-17 AS builder

# Working directory
WORKDIR /app

# Copy pom.xml first
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline

# Copy source code
COPY src ./src

# Build application
RUN mvn clean package -DskipTests


# =========================
# Stage 2 - Run Application
# =========================
FROM eclipse-temurin:17-jdk

# Working directory
WORKDIR /app

# Copy generated jar from builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose port
EXPOSE 9090

# Run application
ENTRYPOINT ["java","-jar","app.jar"]
