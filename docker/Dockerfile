FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="ebou Developers <dev@ebou.org>"
LABEL description="Dockerised ebou, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /ebou

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} ebou
RUN useradd -u ${USER_ID} -g ebou -s /bin/bash -m -d /ebou ebou
RUN mkdir /ebou/.ebou
RUN chown ebou:ebou -R /ebou

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER ebou

VOLUME ["/ebou"]

EXPOSE 48679 9999 58679 58680

WORKDIR /ebou
