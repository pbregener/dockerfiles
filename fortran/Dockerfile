FROM alpine:3.6

RUN apk add --no-cache \
        bash \
        ncurses \
        binutils \
        util-linux \
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
        click \
        gcovr \
        gitlint \
        pytest \
        pycodestyle \
        setuptools \
        sh \
        six && \
    rm -rf /root/.cache
