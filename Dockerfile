FROM debian:10.6

RUN echo nameserver 1.1.1.1 >> /etc/resolve.conf
RUN apt-get update && apt-get install software-properties-common wget -y
RUN add-apt-repository 'deb http://security.debian.org/debian-security stretch/updates main' && apt-get update && apt-get install openjdk-8-jre -y
RUN mkdir /minecraft && cd /minecraft && wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
WORKDIR /minecraft
RUN echo eula=true > eula.txt
