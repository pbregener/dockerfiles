# Dockerfiles
To build Docker images (primarily) for continuous integration.

### Build and test Fortran (and Python) applications
Dockerfile located in `fortran/`.
Images based on Fedora or Alpine Linux. 
Contains gcc, gfortran, git, make, cmake, OpenBLAS,
and Python 3.6 (including pytest, gcovr, and pycodestyle).

### Compile LaTeX documents
Images based on Ubuntu 17.10 and TeXLive 2017.
Contains selected additional packages.
The image `latex` also serves as the base image for
the `latexbeamer` (including the beamer package and DTU
templates) and `pandoc` images.

