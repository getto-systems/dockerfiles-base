FROM buildpack-deps:cosmic
MAINTAINER shun

ENV LABO_USER laboratory
ENV BUILD_LABO_USER $LABO_USER
ENV LABO_DOCKER_HOME /usr/local/docker

RUN set -x && \
    apt-get update && \
    apt-get install -y \
      sudo \
      software-properties-common \
      locales \
      locales-all \
      language-pack-en \
      language-pack-en-base \
      language-pack-ja \
      language-pack-ja-base \
      man \
      manpages-dev \
      ripgrep \
      tmux \
      less \
      vim \
      uidmap \
    && \
    echo '%sudo  ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers && \
    apt-add-repository ppa:fish-shell/release-3 && \
    apt-get update && \
    apt-get install -y \
      fish \
    && \
    apt-get clean && \
    groupadd -g 233 docker && \
    useradd $LABO_USER -s /bin/bash && \
    mkdir -p $LABO_DOCKER_HOME && \
    chown $LABO_USER:$LABO_USER $LABO_DOCKER_HOME && \
    :

USER $LABO_USER
RUN curl -sSL https://get.docker.com/rootless | SKIP_IPTABLES=1 HOME=$LABO_DOCKER_HOME sh

USER root

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/bin/fish"]
