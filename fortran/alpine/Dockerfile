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
    pip install --upgrade pip && \
    pip install --upgrade \
        click \
        gcovr \
        gitlint \
        pytest \
        pycodestyle \
        setuptools \
        sh \
        six && \
    rm -rf /root/.cache
