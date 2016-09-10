FROM alpine:edge

# This image uses the 'edge' version of Alpine Linux, as
# LAPACK or OpenBLAS are not available for now-stable v3.4.

RUN apk add --no-cache \
        bash \
        binutils \
        libc-dev \
        fortify-headers \
        openblas-dev \
        make \
        cmake \
        git \
        gfortran \
        python2 \
        py2-pip && \
    pip install pytest pep8 && \
    rm -rf /root/.cache
