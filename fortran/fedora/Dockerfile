FROM fedora:latest

RUN dnf upgrade -y && \
    dnf install -y --nodocs \
        binutils \
        openblas-devel \
        openblas-openmp64 \
        make \
        cmake \
        git-core \
        gcc-gfortran \
        python3 && \
    pip3 install --upgrade \
        click \
        gcovr \
        gitlint \
        pytest \
        pycodestyle \
        setuptools \
        sh && \
    dnf clean all && \
    rm -rf /root/.cache
