FROM openjdk:23-ea-17-jdk-slim
VOLUME /tmp
ADD ./build/libs/*.jar chat-service.jar

ENTRYPOINT ["java","-jar","/chat-service.jar"]