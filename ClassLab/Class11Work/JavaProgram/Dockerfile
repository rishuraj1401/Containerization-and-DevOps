FROM maven:3.8-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/helloapp-1.0.jar"]
