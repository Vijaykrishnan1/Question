FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/password-reset-app.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]


docker build -t username/password-reset-app .
docker push username/password-reset-app
