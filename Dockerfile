FROM portolano/maven-3.3.9-jdk-8:v1 as build
WORKDIR /workspace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN mvn  clean install -DskipTests

