#!/bin/sh
# Compile OpenSSL 1.1.1

# Install dependencies
apt-get update && apt-get install -y build-essential curl wget

# Download OpenSSL 1.1.1 source
wget https://www.openssl.org/source/openssl-1.1.1.tar.gz
tar -xvf openssl-1.1.1.tar.gz
cd openssl-1.1.1

# Compile OpenSSL
./config
make
make install

# Clean up
rm -rf /openssl-1.1.1
