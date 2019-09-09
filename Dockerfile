FROM ubuntu:19.04

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
 && apt-get update && apt-get install -y \
    nodejs \
    openjdk-12-jdk \
    openjdk-12-demo \
    openjdk-12-doc \
    openjdk-12-jre-headless \
    openjdk-12-source \
 && rm -rf /var/lib/apt/lists/*
