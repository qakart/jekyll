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
  jekyll-watch:1.3.0 \
  pygments.rb \
  s3_website:2.12.2 \
  jekyll-sitemap:0.9.0 \
  jekyll-minifier:0.0.4 \
  jekyll-multiple-languages-plugin \
  htmlcompressor:0.1.2 \
  sass:3.4.20

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll"]
