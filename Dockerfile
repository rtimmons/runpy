FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install -y curl git
RUN apt-get install -y build-essential
RUN apt-get install -y zlib1g zlib1g-dev
RUN apt-get install -y lbzip2
# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# https://github.com/pyenv/pyenv/wiki/common-build-problems
RUN apt-get install -y libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# docker build .
# docker run -i -v $PWD:$PWD 213bd6593e35 $PWD/runpy
