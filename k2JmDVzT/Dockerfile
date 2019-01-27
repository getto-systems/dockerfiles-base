FROM buildpack-deps:cosmic
MAINTAINER shun

ENV RELEASE_NAME=cosmic

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
      ripgrep \
      tmux \
      less \
      vim \
    && \
    echo '%sudo  ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers && \
    curl -fsSL https://get.docker.com | sudo sh && \
    apt-add-repository ppa:fish-shell/release-3 && \
    apt-get update && \
    apt-get install -y \
      fish \
    && \
    apt-get clean && \
    :

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/bin/fish"]
