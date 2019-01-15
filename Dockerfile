FROM jenkinsci/blueocean:latest

USER root

RUN apk add --no-cache --update \
    py-pip py-lxml\
    && pip install flake8 pylint pylint-odoo lxml flake8_junit_report pylint2junit\
    && rm -rf /var/cache/apk/*

COPY ./flake8.cfg /var/jenkins_home/cfg/

USER jenkins
