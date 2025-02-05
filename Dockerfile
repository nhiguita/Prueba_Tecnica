FROM openjdk:17-alpine

RUN apt-get install -y tzdata

ENV TZ America/Bogota

VOLUME ["/home"]

ENTRYPOINT ["java", "-jar", "/home/proxy.jar"]