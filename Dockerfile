
# Etapa 1: Imagem para construção
#FROM maven:3.9.6-eclipse-temurin-21 AS builder
#WORKDIR /app
#COPY . .
#RUN mvn clean package -DskipTests


FROM openjdk:21
LABEL authors="rafael"
WORKDIR /app
#COPY --from=builder /app/target/*.jar app.jar
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]


