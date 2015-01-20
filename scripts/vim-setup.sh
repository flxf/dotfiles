#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s $DIR/../vimrc ~/.vimrc

vim +BundleInstall +qall
