FROM alpine:3.5

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
    pip install pytest gcovr pycodestyle && \
    rm -rf /root/.cache
