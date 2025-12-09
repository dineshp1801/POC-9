FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY target/myapp.jar myapp.jar

EXPOSE 8080

CMD ["java", "-jar", "myapp.jar"]
