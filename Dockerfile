# 1️⃣ Build stage: use Maven to compile
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# 2️⃣ Run stage: lightweight JDK image
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Render assigns dynamic port via $PORT environment variable
ENV PORT=8080
EXPOSE $PORT

# Pass dynamic port to Spring Boot
ENTRYPOINT ["sh", "-c", "java -Dserver.port=$PORT -jar app.jar"]
