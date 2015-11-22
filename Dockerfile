FROM fedora:23

MAINTAINER Ryan Scott Brown

RUN dnf install -y tar

RUN curl -L -s https://haskell.org/platform/download/7.10.2/haskell-platform-7.10.2-a-unknown-linux-deb7.tar.gz | tar xzf - -C /tmp

RUN cd /tmp && ./install-haskell-platform.sh

RUN rm /tmp/hp-usr-local.tar.gz
