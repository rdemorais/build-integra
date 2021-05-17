FROM openjdk:8
MAINTAINER Rafael de Morais <desenvolvimento@ihealthgroup.com.br>

RUN sed -i "703s/.*/jdk.tls.disabledAlgorithms=SSLv3, TLSv1.1, RC4, DES, MD5withRSA, \\\/" /usr/local/openjdk-8/jre/lib/security/java.security &&\
    apt-get update && \
    apt-get install -y tzdata openssl
