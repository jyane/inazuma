FROM ruby:2.2.2
MAINTAINER Shohei Kamimori <jyane.kstm@gmail.com>
RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /app

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /app
WORKDIR /app
