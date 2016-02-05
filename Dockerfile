FROM ruby:2.1
MAINTAINER gerald.pereira@octoperf.com

RUN apt-get update \
  && apt-get install -y \
    node \
    python-pygments \
  && apt-get clean 

RUN gem install \
  jekyll:2.5.3 \
  mini_magick \
  kramdown \
  jekyll-watch \
  pygments.rb \
  s3_website \
  jekyll-minifier \
  jekyll-multiple-languages-plugin

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll"]
