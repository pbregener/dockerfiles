FROM alpine:3.6

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
    pip install \
        gcovr \
        gitlint \
        pytest \
        pycodestyle \
        six && \
    rm -rf /root/.cache
