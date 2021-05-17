FROM openjdk:8-jre-alpine
MAINTAINER Rafael de Morais <desenvolvimento@ihealthgroup.com.br>

RUN sed -i 's/http\:\/\/dl-cdn.alpinelinux.org/https\:\/\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories &&\
    sed -i "703s/.*/jdk.tls.disabledAlgorithms=SSLv3, TLSv1.1, RC4, DES, MD5withRSA, \\\/" /usr/local/openjdk-8/jre/lib/security/java.security &&\
    apk add --no-cache tzdata openssl
