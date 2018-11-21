FROM node:11.2.0-stretch

RUN apt-get update && \
    apt-get install -y \
      s3cmd \
    && \
    :

COPY . /opts
WORKDIR /opts
RUN npm install && npm run elm-install
