FROM ruby:2.6.1-alpine3.9

RUN bundle config --global frozen 1

WORKDIR /code

COPY ./Gemfile /code/Gemfile
COPY ./Gemfile.lock /code/Gemfile.lock

RUN apk update && \
    apk add postgresql-libs bash && \
    apk add --virtual .build-deps gcc musl-dev postgresql-dev libffi-dev && \
    apk add build-base && \
    apk add nodejs && \
    apk add yarn && \
    apk add tzdata && \
    bundle install && \
    apk --purge del .build-deps

COPY . /code/
