#!/bin/bash
echo "Installing OpenSSL 1.1.1..."
mkdir -p $BUILD_DIR/openssl
curl -O https://www.openssl.org/source/openssl-1.1.1.tar.gz
tar -xzvf openssl-1.1.1.tar.gz
cd openssl-1.1.1
./config --prefix=$BUILD_DIR/openssl
make && make install
export PATH=$BUILD_DIR/openssl/bin:$PATH
