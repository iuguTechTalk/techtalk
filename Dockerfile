FROM ruby:2.6.3

#RUN apt-get update -qq
#RUN apt-get upgrade -y


# banco e essenciais
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


# Rails

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
Add Gemfile.lock /app/Gemfile.lock

RUN gem install bundler

RUN bundle install

EXPOSE 3333
