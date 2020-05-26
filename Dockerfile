FROM node:10

RUN apt-get update -y
RUN apt-get install -yq openjdk-8-jdk wget unzip
RUN wget https://dl.bintray.com/groovy/maven/apache-groovy-binary-2.4.19.zip
RUN unzip apache-groovy-binary-2.4.19.zip
ENV GROOVY_HOME=/groovy-2.4.19
ENV PATH=$GROOVY_HOME/bin:$PATH
RUN grape install io.swagger swagger-codegen-cli 2.2.2
RUN grape install io.swagger swagger-codegen 2.2.2
