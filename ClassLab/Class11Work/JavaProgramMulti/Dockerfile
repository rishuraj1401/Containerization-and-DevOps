# Stage 1: Build
FROM maven:3.8-openjdk-11 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM eclipse-temurin:11-jre-jammy
WORKDIR /app
# Copy only the built JAR, not source code or Maven
COPY --from=builder /app/target/helloapp-1.0.jar app.jar

# Security: Run as non-root user
RUN useradd -m myuser
USER myuser

CMD ["java", "-jar", "app.jar"]
