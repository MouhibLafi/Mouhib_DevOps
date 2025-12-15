FROM eclipse-temurin:11-jre-alpine
LABEL maintainer="mouhib.lafi@esprit.tn"
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
