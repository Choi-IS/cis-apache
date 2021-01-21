FROM ubuntu:14.04
MAINTAINER "inseo-choi <dlstj2717@naver.com>"
LABEL "purpose"="webserver praactice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
