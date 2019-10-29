ARG JEKYLL_BASEURL=''

####################################

FROM alpine:3.10 as builder

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV BUILD_PACKAGES \
    ruby \
    ruby-dev \
    ruby-rdoc \
    ruby-irb \
    ruby-bigdecimal \
    gcc \
    make \
    libc-dev \
    libffi-dev \
    build-base

RUN apk add --no-cache $BUILD_PACKAGES \
    && gem update --system \
    && rm /usr/bin/bundle \
    && gem install bundler

WORKDIR /jekyll
ADD Gemfile Gemfile.lock ./
RUN bundle install

ADD . .
ARG JEKYLL_BASEURL
RUN bundle exec jekyll build --baseurl $JEKYLL_BASEURL

####################################

FROM nginx:alpine

ARG JEKYLL_BASEURL
COPY --from=builder /jekyll/_site /usr/share/nginx/html/$JEKYLL_BASEURL
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
