FROM openjdk:11-jre-slim
WORKDIR /opt
ADD target/demo-microservice-*SNAPSHOT.jar /opt/app.jar

RUN sh -c 'touch /opt/app.jar'

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
