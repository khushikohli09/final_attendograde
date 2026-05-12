# 1️⃣ Build stage
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline  # Cache dependencies
COPY src ./src
RUN mvn clean package -DskipTests

# 2️⃣ Run stage
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Render dynamic port
ENV PORT=8080
EXPOSE $PORT

# Better entrypoint with memory limits for free tier
ENTRYPOINT ["sh", "-c", "java -Xmx512m -Dserver.port=$PORT -jar app.jar"]
