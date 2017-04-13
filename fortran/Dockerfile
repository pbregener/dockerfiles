FROM alpine:3.5

RUN apk add --no-cache \
        bash \
        binutils \
        libc-dev \
        fortify-headers \
        openblas-dev \
        make \
        git \
        gfortran \
        python2 \
        py2-pip && \
    apk add --no-cache --update-cache \
            --repository http://nl.alpinelinux.org/alpine/edge/main \
        cmake && \
    pip install --upgrade pip && \
    pip install \
        gcovr \
        pytest \
        pycodestyle && \
    rm -rf /root/.cache
