FROM zookeeper:3.5.6
MAINTAINER Jenson

RUN apt-get update && apt-get install -y telnet curl net-tools

