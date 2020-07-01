#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script


echo "=============================openSUSE - Source bcc============================================================"

#https://github.com/iovisor/bcc/blob/master/INSTALL.md#opensuse---binary
zypper ref #Refreshing Repositories
zypper update -y #update all installed packages with newer version as far as possible

#https://github.com/iovisor/bcc/blob/master/INSTALL.md#opensuse---source
# Install build dependencies
zypper --non-interactive --quiet install bison cmake flex gcc gcc-c++ git libelf-devel libstdc++-devel \
llvm-devel clang-devel pkg-config python-devel python-setuptools python3-devel \
python3-setuptools

zypper --non-interactive --quiet install luajit-devel       # for lua support in openSUSE Leap 42.2 or later
zypper --non-interactive --quiet install lua51-luajit-devel # for lua support in openSUSE Tumbleweed

#Install and compile BCC
git clone https://github.com/iovisor/bcc.git
mkdir bcc/build; cd bcc/build
cmake -DLUAJIT_INCLUDE_DIR=`pkg-config --variable=includedir luajit` \ # for lua support
make
make install
cmake -DPYTHON_CMD=python3 .. # build python3 binding

pushd src/python/
make
make install
popd
