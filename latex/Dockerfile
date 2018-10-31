# Ubuntu 18.10 has TeXLive 2018
FROM ubuntu:18.10

ARG DEBIAN_FRONTEND=noninteractive

# Install basic TeXLive, git, and required tools for tlmgr
RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      texlive \
      chktex \
      git \
      perl-base && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/*

# Install additional TeXLive packages
RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      wget xzdec xz-utils unzip && \
    (tlmgr init-usertree || exit 0) && \
# Uncomment below (and possibly adapt to another year) once the TeXLive version of
# the Ubuntu base image becomes frozen/end-of-life (TeXLive 2018 for Ubuntu 18.10 Cosmic)
#    tlmgr option repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final && \
    tlmgr install \
      babel-danish \
      blindtext \
      dblfloatfix \
      doi \
      enumitem \
      etoolbox \
      footmisc \
      ly1 \
      mweights \
      placeins \
      preprint \
      relsize \
      ulem \
      units \
      upquote \
      wrapfig && \
    tlmgr install \
      fontawesome \
      inconsolata \
      newtx \
      tex-gyre \
      fontaxes \
      kastrup \
      boondox \
      sourcesanspro ; \
    texhash && updmap -sys && \
    apt-get purge -yq \
      wget xzdec xz-utils unzip && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /root/texmf/web2c/tlmgr.log

# Install additional tools and fonts:
# * latest version of latexmk
# * URW Classico font (Optima)
# * Garamondx font (Garamond expert version)
RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      wget unzip ca-certificates && \
    wget -nv http://mirrors.ctan.org/support/latexmk.zip && \
    unzip -q latexmk.zip && \
    mv latexmk/latexmk.pl /usr/bin/latexmk && \
    rm -rf latexmk* && \
    wget -nv http://tug.org/fonts/getnonfreefonts/install-getnonfreefonts && \
    texlua install-getnonfreefonts && \
    getnonfreefonts --sys classico && \
    getnonfreefonts --sys garamondx && \
    getnonfreefonts --sys -l && \
    apt-get purge -yq \
      wget unzip ca-certificates && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/*\
           /tmp/* \
           install-getnonfreefonts

COPY LatexMk /opt/local/share/latexmk/
