FROM ubuntu:16.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      wget xzdec unzip \
      texlive \
      chktex \
      perl-base && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/*

RUN (tlmgr init-usertree || exit 0) && \
    tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet && \
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
      preprint \
      relsize \
      sourcesanspro \
      ulem \
      units \
      upquote \
      wrapfig && \
    rm -rf /tmp/*

RUN wget -nv http://mirrors.ctan.org/support/latexmk.zip && \
    unzip -q latexmk.zip && \
    mv latexmk/latexmk.pl /usr/bin/latexmk && \
    rm -rf latexmk*
