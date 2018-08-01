FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hackerspace
WORKDIR /hackerspace
COPY Gemfile /hackerspace/Gemfile
COPY Gemfile.lock /hackerspace/Gemfile.lock
RUN bundle install
COPY . /hackerspace
