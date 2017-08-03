FROM fedora:latest

RUN dnf install -y --nodocs \
        binutils \
        openblas-devel \
        openblas-openmp64 \
        make \
        cmake \
        git-core \
        gcc-gfortran \
        python2 \
        python-pip && \
    pip install --upgrade \
        click \
        gcovr \
        gitlint \
        pytest \
        pycodestyle \
        setuptools \
        sh \
        six && \
    dnf clean all && \
    rm -rf /root/.cache
