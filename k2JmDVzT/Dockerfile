FROM buildpack-deps:bionic
MAINTAINER shun

ENV RELEASE_NAME=bionic
ENV DOCKER_VERSION 17.12.0-ce

RUN set -x && \
    apt-get update && \
    apt-get install -y \
      sudo \
      software-properties-common \
      bash-completion \
      locales \
      locales-all \
      language-pack-en \
      language-pack-en-base \
      language-pack-ja \
      language-pack-ja-base \
      man \
      manpages-dev \
      silversearcher-ag \
      tmux \
      less \
      zsh \
      neovim \
    && \
    echo '%sudo  ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $RELEASE_NAME edge" && \
    apt-add-repository ppa:fish-shell/release-2 && \
    apt-get update && \
    apt-get install -y \
      docker-ce \
      fish \
    && \
    apt-get clean && \
    :

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/bin/fish"]
