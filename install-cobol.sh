#!/bin/bash
cd /cobol
./configure  --without-db
make
make check
make install
ldconfig

