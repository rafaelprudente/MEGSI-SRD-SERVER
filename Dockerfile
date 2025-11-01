FROM bellsoft/liberica-openjre-debian:21

WORKDIR /opt
ENV SERVER_PORT=8761
ENV LOG_LEVEL=INFO

EXPOSE 8761

COPY target/*.jar /opt/app.jar

ENTRYPOINT ["/bin/sh", "-c", "java -jar /opt/app.jar"]