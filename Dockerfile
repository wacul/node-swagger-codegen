FROM node:8

RUN apt-get update -y
RUN apt-get install -yq openjdk-7-jdk wget unzip
RUN wget https://dl.bintray.com/groovy/maven/apache-groovy-binary-2.4.12.zip
RUN unzip apache-groovy-binary-2.4.12.zip
ENV GROOVY_HOME=/groovy-2.4.12
ENV PATH=$GROOVY_HOME/bin:$PATH
RUN grape install io.swagger swagger-codegen-cli 2.2.2
RUN grape install io.swagger swagger-codegen 2.2.2
