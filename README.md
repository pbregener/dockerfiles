# Various Dockerfiles for Continuous Integration

## In `fortran/` for building and testing Fortran applications
Image based on Alpine Linux.  
Contains gcc, gfortran, git, make, cmake, OpenBLAS
and Python (including pytest, gcovr, and pep8).

## In `latex/` for compiling LaTeX documents
Image based on Ubuntu 16.04LTS and TeXLive (2015 and 2016).
Contains selected additional packages.

