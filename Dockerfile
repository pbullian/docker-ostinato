FROM ubuntu:latest

MAINTAINER pbullian

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ostinato \
 && rm -rf /var/lib/apt/lists/*

CMD ostinato
