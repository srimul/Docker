FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y firefox xvfb python-pip
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN pip install robotframework
RUN pip install robotframework-selenium2library
RUN pip install robotframework-xvfb

#Download gecko driver and place it in appropriate place.
RUN wget  https://github.com/mozilla/geckodriver/releases/download/v0.22.0/geckodriver-v0.22.0-linux64.tar.gz
RUN tar -xvf geckodriver-v0.22.0-linux64.tar.gz
RUN cp geckodriver /usr/bin


RUN mkdir -p /root/robotframework_test

WORKDIR /root/robotframework_test

#copy the test case
ADD test.txt /root/robotframework_test
#copy the steps to be followed.
ADD steps.txt /root/robotframework_test


#CMD (Xvfb :10 -ac & export DISPLAY=:10; wget -qO- https://github.com/mozilla/geckodriver/releases/download/v0.22.0/geckodriver-v0.22.0-linux64.tar.gz | tar -xz -C /usr/bin/; pybot -d /root/reports/ /root/robotframework_test/test.txt)

