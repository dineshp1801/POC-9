FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/myapp.jar myapp.jar

EXPOSE 8080

CMD ["java", "-jar", "myapp.jar"]
