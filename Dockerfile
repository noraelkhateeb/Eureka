FROM portolano/maven-3.3.9-jdk-8:v1 


RUN mvn  clean install -DskipTests

