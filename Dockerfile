FROM debian:jessie
MAINTAINER Dominique Feyer <dfeyer@ttree.ch>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

# Configure locales
RUN apt-get install -y locales && \
	dpkg-reconfigure locales && \
	locale-gen C.UTF-8 && \
	/usr/sbin/update-locale LANG=C.UTF-8 && \
	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen

# Set default locale for the environment
ENV LC_ALL=C.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8
