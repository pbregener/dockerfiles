FROM alpine:latest

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
