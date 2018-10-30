FROM ruby:2.5.3

COPY . /opts
WORKDIR /opts
RUN bundle install --path=/opts/vendor/bundle --deployment
