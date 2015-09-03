FROM debian:jessie
MAINTAINER Dominique Feyer <dfeyer@ttree.ch>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
