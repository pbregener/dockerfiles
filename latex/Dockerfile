# Ubuntu 17.10 has TeXLive 2017
FROM ubuntu:17.10

ARG DEBIAN_FRONTEND=noninteractive

# Install basic TeXLive and required tools for tlmgr
RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      texlive \
      chktex \
      perl-base && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/*

# Install additional TeXLive packages
RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      wget xzdec unzip && \
    (tlmgr init-usertree || exit 0) && \
    tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet && \
    tlmgr update --self --all && \
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
      sourcesanspro ; \
    apt-get purge -yq \
      wget xzdec unzip && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /root/texmf/web2c/tlmgr.log

# Install additional tools and fonts:
# * latest version of latexmk
# * URW Classico font (Optima)
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
    getnonfreefonts --sys -l && \
    apt-get purge -yq \
      wget unzip ca-certificates && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/*\
           /tmp/* \
           install-getnonfreefonts

COPY LatexMk /opt/local/share/latexmk/
