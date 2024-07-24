FROM openjdk:23-ea-17-jdk-slim
VOLUME /tmp
ADD ./build/libs/*.jar eureka-service.jar

ENTRYPOINT ["java","-jar","/eureka-service.jar"]