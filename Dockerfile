FROM ubuntu:16.04
MAINTAINER skahler@pivotal.io

#########################
# Docker ubuntu 16.04 with additions to make ci pipeline easier
# - paramiko
# - postgres
# - npm
# - azure client 
#
# Version 0.1
#########################
RUN apt-get update -y
RUN apt-get install -y python python-pip postgresql nodejs-legacy npm
RUN pip install paramiko
RUN npm install -g azure-cli
RUN mkdir -p ~/.azure/
RUN echo '{"telemetry":false}' > ~/.azure/telemtry.json
RUN azure config mode arm
