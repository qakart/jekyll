FROM ruby:2.1
MAINTAINER gerald.pereira@octoperf.com

RUN apt-get update \
  && apt-get install -y \
    node \
    python-pygments \
  && apt-get clean 

RUN gem install bundler
RUN bundle install

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll"]
