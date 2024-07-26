FROM openjdk:23-ea-17-jdk-slim
VOLUME /tmp
ADD ./build/libs/*.jar user-service.jar

ENTRYPOINT ["java","-jar","/user-service.jar"]