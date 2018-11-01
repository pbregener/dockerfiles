FROM pboreg/latex

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -yq install --no-install-recommends \
      wget xzdec xz-utils unzip && \
    tlmgr update --self --all && \
    tlmgr install \
      elsarticle \
      stix2-type1 ; \
    texhash && updmap -sys && \
    apt-get purge -yq \
      wget xzdec xz-utils unzip && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /root/texmf/web2c/tlmgr.log
