#build docker image of java application
#!/bin/bash
FROM  docker.io/library/openjdk:latest
COPY  . /usr/src/java_app
WORKDIR /usr/src/java_app
CMD  ["/bin/bash", "./build.sh"]
ENTRYPOINT ["/bin/bash", "./run.sh"]
