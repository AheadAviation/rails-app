FROM ruby:2.5.5-alpine3.10
LABEL maintainer=someone@boystown.org

RUN apk add --no-cache \
  curl \
  curl-dev \
  build-base \
  libffi-dev \
  git \
  nodejs \
  postgresql-dev \
  postgresql-client && \
  gem install bundler

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV RAILS_ENV development
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile Gemfile.lock /usr/src/app/
RUN bundle config --global frozen 1 && \
    bundle install

COPY . /usr/src/app/

EXPOSE 3000
CMD ["bundle", "exec", "passenger", "start"]
