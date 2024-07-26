FROM openjdk:23-ea-17-jdk-slim
VOLUME /tmp
ADD ./build/libs/*.jar gateway-service.jar

ENTRYPOINT ["java","-jar","/gateway-service.jar"]