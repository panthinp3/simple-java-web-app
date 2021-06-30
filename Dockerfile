#build docker image of java application
FROM  docker.io/library/openjdk:latest
COPY  . /usr/src/java_app
WORKDIR /usr/src/java_app
RUN  ["bash", "./build.sh"]
ENTRYPOINT ["bash", "./run.sh"]
