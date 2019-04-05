FROM buildpack-deps:cosmic
MAINTAINER shun

ENV LABO_USER laboratory
ENV BUILD_LABO_USER $LABO_USER

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
    curl -sSL https://get.docker.com | sh && \
    groupmod -g 233 docker && \
    useradd $LABO_USER -s /bin/bash && \
    :

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/bin/fish"]
