#!/bin/sh

# VIM
mv $HOME/.vimrc $HOME/.vimrc.old  # creating backup of the last vimrc
cp vim/vimrc $HOME/.vimrc
cp vim/vim_runtime $HOME/.vim_runtime

