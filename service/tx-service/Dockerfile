FROM openjdk:23-ea-17-jdk-slim
VOLUME /tmp
ADD ./build/libs/*.jar tx-service.jar

ENTRYPOINT ["java","-jar","/tx-service.jar"]