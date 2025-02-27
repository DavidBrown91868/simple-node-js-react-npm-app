FROM jenkins/jenkins:latest

USER root

RUN apt-get update \
    && apt-get install -y nodejs \
    && apt-get install -y npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER jenkins
