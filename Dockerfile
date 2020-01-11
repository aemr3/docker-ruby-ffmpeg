FROM jrottenberg/ffmpeg:4.1-ubuntu

RUN apt-get update && \
    apt-get install -y software-properties-common curl wget git vim build-essential autoconf automake libtool && \
    apt-add-repository -y ppa:brightbox/ruby-ng && \
    apt-get update && \
    apt-get install -y ruby2.6 ruby2.6-dev && \
    gem install bundler && \
    rm -rf /var/lib/apt/lists/*
