FROM ubuntu:latest

MAINTAINER Pablo E. Bullian "pbullian@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ostinato \
 && rm -rf /var/lib/apt/lists/*

CMD ostinato
