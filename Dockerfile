FROM ubuntu:18.04
LABEL maintainer="Franc Rodriguez - franc@tecob.com"
RUN apt-get update
RUN apt-get install -qy python3 whois
ADD . /RipeExtractor
WORKDIR /RipeExtractor

