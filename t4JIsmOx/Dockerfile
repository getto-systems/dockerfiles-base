FROM ruby:2.4.2-stretch

RUN : && \
  apt-get update && \
  apt-get install -y \
    php-cli \
    php-xml \
    php-zip \
  && \
  apt-get clean && \
  :

COPY . /opts
WORKDIR /opts
RUN bundle install --path=/opts/vendor/bundle --deployment
