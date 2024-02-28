FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install wget -y \
  && apt-get install dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
    libxft-dev libxext-dev python3 libssl-dev libgsl0-dev libtiff-dev \
    python3-pip -y

RUN pip3 install numpy awkward uproot4 particle hepunits matplotlib \
  mplhep vector fastjet iminuit
