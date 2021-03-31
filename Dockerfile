FROM openjdk:8-jre-alpine
MAINTAINER Rafael de Morais <desenvolvimento@ihealthgroup.com.br>

RUN sed -i 's/http\:\/\/dl-cdn.alpinelinux.org/https\:\/\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories &&\
    apk add --no-cache tzdata openssl
