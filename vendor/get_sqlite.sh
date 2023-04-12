#!/bin/bash
set -euo pipefail

VENDOR_DIR=$(dirname "$0")
echo "installing to $VENDOR_DIR"
wget https://www.sqlite.org/2022/sqlite-autoconf-3400100.tar.gz -O $VENDOR_DIR/sqlite.tar.gz
tar -xvzf $VENDOR_DIR/sqlite.tar.gz
rm $VENDOR_DIR/sqlite.tar.gz
rm -rf $VENDOR_DIR/sqlite
mv sqlite-autoconf-3400100/ $VENDOR_DIR/sqlite
