#build docker image of java application
FROM  openjdk:11
COPY  . /usr/src/java_app
WORKDIR /usr/src/java_app
RUN  ["sh", "./build.sh"]
ENTRYPOINT ["sh", "./run.sh"]
