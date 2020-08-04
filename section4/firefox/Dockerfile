# Base docker image
FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && apt-get install -y \
    apt-utils \
    curl \
    dbus-x11 \
    dunst \
    xauth \
    hunspell-en-us \
    python3-dbus \
    software-properties-common \
    libx11-xcb1 \
    gconf2 \
    apt-file \
    apt-transport-https \
    libgtk-3-0 \
    gdebi \
    wget \
    unzip \
    libhunspell-1.3-0 \
    libxslt1.1 \
    python-pip \
#    gpg-agent \
    --no-install-recommends

RUN apt-get update \
  && apt-get -y install \
  firefox \
  libcanberra-gtk-module \
  libcanberra-gtk3-module
