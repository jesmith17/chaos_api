FROM ruby:2.5

# Update bundler
RUN gem list bundler

RUN gem update --system
RUN gem install bundler

RUN bundle init
RUN bundle


RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]