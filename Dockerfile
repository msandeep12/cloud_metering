FROM ubuntu:latest
LABEL maintainer="msandeep12@gmail.com"
# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install openjdk-8-jdk curl wget python gnupg

RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN apt-get install apt-transport-https
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list

RUN apt-get update &&  apt-get install logstash

