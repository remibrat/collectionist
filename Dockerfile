FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /collectionist
WORKDIR /collectionist
COPY Gemfile /collectionist/Gemfile
COPY Gemfile.lock /collectionist/Gemfile.lock
RUN bundle install
CMD ["rails", "server", "-b", "0.0.0.0"]