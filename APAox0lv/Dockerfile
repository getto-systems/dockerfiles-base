FROM ruby:2.5.1

COPY . /opts
WORKDIR /opts
RUN bundle install --path=/opts/vendor/bundle --deployment
