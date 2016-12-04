# base image
FROM java:8

# maintainer
MAINTAINER bingwenwuhen bingwenwuhen@163.com

# update packages and install maven

RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y vim wget curl maven

# attach volumes
VOLUME /vol/development

# create working directory
RUN mkdir -p /vol/development
RUN mkdir -p /vol/development/src
WORKDIR /vol/development

COPY ./src /vol/development/src/
COPY ./pom.xml /vol/development/
# maven exec
CMD ["mvn", "clean", "install", "spring-boot:run"]
