#Dockefile for creating a docker image : Ubuntu  Pyhton Robotframework selenium library
#Commnet
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python python-pip wget gcc phantomjs firefox

RUN apt-get install -y xvfb

RUN apt-get install sudo 

RUN sudo apt install -y vim

RUN sudo apt install -y lynx
RUN pip install robotframework
RUN pip install robotframework-sshlibrary
RUN pip install robotframework-xvfb
RUN pip install robotframework-selenium2library

WORKDIR  /home
RUN apt-get install -y wget
RUN wget  https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz 
RUN tar -xvf  geckodriver-v0.21.0-linux64.tar.gz
RUN cp geckodriver /usr/bin


EXPOSE 4000


ADD test.robot /home
ADD t1.robot /home
