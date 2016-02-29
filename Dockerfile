FROM ruby:2.2

MAINTAINER Jerome Loisel <jerome.loisel@octoperf.com>

ENV JEKYLL_VERSION=2.5.3

RUN apt-get update && apt-get install -y nodejs && \
    gem install jekyll -v $JEKYLL_VERSION && \
    gem install jekyll-multiple-languages-plugin && \
    gem install jekyll-sitemap -v 0.10.0 && \
    gem install mini_magick && \
    gem install jekyll-minifier -v 0.0.4 && \
    mkdir /src

VOLUME ["/src"]
WORKDIR /src

EXPOSE 4000

ENTRYPOINT ["jekyll"]
CMD ["serve", "--drafts"]
