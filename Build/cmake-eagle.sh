#!/bin/bash

# Example CMake config script for running test suite on Eagle:

module load mpt cuda/11.2.2 cmake

cmake -DCMAKE_INSTALL_PREFIX:PATH=./install \
      -DCMAKE_BUILD_TYPE:STRING=Release \
      -DPELEC_DIM:STRING=3 \
      -DPELEC_ENABLE_AMREX_EB:BOOL=ON \
      -DPELEC_ENABLE_MPI:BOOL=ON \
      -DPELEC_ENABLE_TESTS:BOOL=ON \
      -DPELEC_ENABLE_FCOMPARE:BOOL=ON \
      -DPELEC_ENABLE_FCOMPARE_FOR_TESTS:BOOL=ON \
      -DPELEC_ENABLE_MASA:BOOL=OFF \
      -DPELEC_ENABLE_ALL_WARNINGS:BOOL=ON \
      -DPELEC_ENABLE_CPPCHECK:BOOL=OFF \
      -DPELEC_ENABLE_CLANG_TIDY:BOOL=OFF \
      -DPELEC_ENABLE_CUDA:BOOL=ON \
      -DGPUS_PER_NODE:STRING=2 \
      -DGPUS_PER_SOCKET:STRING=1 \
      -DAMReX_CUDA_ARCH:STRING=7.0 \
      -DPYTHON_EXECUTABLE=$(which python3) \
      -DPELEC_PRECISION:STRING=DOUBLE \
      .. 
#cmake --build . --parallel $(nproc)
#ctest
