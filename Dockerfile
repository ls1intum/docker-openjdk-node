FROM ubuntu:19.04

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y \
    nodejs \
    openjdk-12-jdk \
    openjdk-12-demo \
    openjdk-12-doc \
    openjdk-12-jre-headless \
    openjdk-12-source \
    yarn \
 && rm -rf /var/lib/apt/lists/*
