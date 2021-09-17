#!/bin/sh

set -e

export CC=x86_64-w64-mingw32-gcc
export CXX=x86_64-w64-mingw32-g++

# line 1044-1046 they use undefined variable unquoted
export CFLAGS=''
export CXXFLAGS='--std=c++11'
export LDFLAGS=''

export cmake_toolchain=''
# ASK: Do we want to use Ninja here ?
export MAKE=make
export CMAKE_C_SOURCES=''
export cmake_ansi_cxx_flags=''

# required for libstdc++
export PATH="$PATH:/usr/x86_64-w64-mingw32/sys-root/mingw/bin"

. ./bootstrap
make
