#!/bin/sh

## Litle script to install cmake on Arch Linux
git clone git@github.com:universal-ctags/ctags.git && cd ctags
./autogen.sh && ./configure && make
sudo make install
