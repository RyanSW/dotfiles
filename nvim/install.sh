#!/usr/bin/env sh

INSTALL=$HOME/.local/nvim
LOCALBIN=$HOME/.local/bin

[ -d $INSTALL ] && rm -rf $INSTALL

# Create the install directory
mkdir $INSTALL
cd $INSTALL

# Download the binary
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

# Extract the image
tar -xzf nvim-linux64.tar.gz

# Link the bin to user path
[ ! -d $LOCALBIN ] && mkdir -p $LOCALBIN && echo Local bin may not be on path
ln -s $INSTALL/nvim-linux64/bin/* $LOCALBIN/
