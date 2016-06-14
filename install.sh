#!/bin/bash

# install source target
install()
{
    ln -fvs "$(pwd)/$1" "$2"
}

for f in bashrc bash_aliases bash_functions vimrc gvimrc profile vim/colors/oblivion.vim term_colors; do
    mkdir -pv "$(dirname "$f")"
    install $f ~/.$f
done
