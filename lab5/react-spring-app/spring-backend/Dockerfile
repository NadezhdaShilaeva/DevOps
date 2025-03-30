FROM eclipse-temurin:17-jdk-alpine AS system

WORKDIR /app

RUN apk add --no-cache maven

FROM system AS build

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

RUN adduser -D myuser
USER myuser

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]