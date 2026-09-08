FROM maven:3.9-eclipse-temurin-21

WORKDIR /app

COPY pom.xml .

COPY src ./src

RUN mvn dependency:go-offline

EXPOSE 8082

CMD ["mvn", "camel:run"]
