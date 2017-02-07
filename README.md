# Various Dockerfiles
To build Docker images (primarily) for continuous integration.

# In `fortran/` for building and testing Fortran applications
Image based on Alpine Linux. 
Contains gcc, gfortran, git, make, cmake, OpenBLAS,
and Python 2.7 (including pytest, gcovr, and pycodestyle).

# In `latex/` for compiling LaTeX documents
Image based on Ubuntu 16.04LTS and TeXLive 2016.
Contains selected additional packages.
The image `latex` also serves as the base image for
the `latexbeamer` and `pandoc` images.

