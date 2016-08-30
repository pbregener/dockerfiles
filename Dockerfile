FROM alpine:edge

# This image uses the 'edge' version of Alpine Linux, as
# LAPACK does not seem to be available for now-stable v3.4.
# However, neither LAPACK nor OpenBLAS is in the main repo
# for 'edge' either, so we have to add the testing one
# on-the-fly here. This might all get obsolete for future
# Alpine releases (possibly 3.5).

RUN apk add --no-cache \
        bash \
        binutils \
        libc-dev \
        fortify-headers \
        make \
        cmake \
        git \
        gfortran \
        python2 \
        py-pip && \
    apk add openblas-dev \
        --no-cache \
        --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
        --allow-untrusted && \
    pip install pytest
