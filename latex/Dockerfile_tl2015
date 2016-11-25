FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      wget xzdec vim \
      texlive \
      chktex \
      latexmk && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    (tlmgr init-usertree || exit 0) && \
    tlmgr option repository \
      ftp://tug.org/historic/systems/texlive/2015/tlnet-final && \
    tlmgr update --self --all && \
    tlmgr install \
      babel-danish \
      blindtext \
      doi \
      enumitem \
      etoolbox \
      fontawesome \
      footmisc \
      inconsolata \
      ly1 \
      mweights \
      placeins \
      relsize \
      sourcesanspro \
      ulem \
      units \
      upquote \
      wrapfig && \
    rm -rf /tmp
