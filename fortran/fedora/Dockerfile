FROM fedora:latest

RUN echo "deltarpm=False" >> /etc/dnf/dnf.conf && \
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
    dnf autoremove -y && \
    dnf clean all && \
    rm -rf /root/.cache
