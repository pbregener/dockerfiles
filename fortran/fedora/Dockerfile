# The update cycles of the different Fedora base images seem
# to be quite erratic. As of the F29 release, the "official"
# image from hub.docker.com seems to be newer than the one from
# the fedoraproject.org registry.
FROM fedora:latest
#FROM registry.fedoraproject.org/fedora:latest

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
