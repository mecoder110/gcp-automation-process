FROM openjdk:17
VOLUME /tmp
CMD mvn clean install
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
