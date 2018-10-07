#!/bin/sh

# VIM
if [ -f "$USER/.vimrc" ]; then
    mv $HOME/.vimrc $HOME/.vimrc.old  # creating backup of the last vimrc
    cp vim/vimrc $HOME/.vimrc
    cp vim/vim_runtime $HOME/.vim_runtime
fi

# i3
if [ -d "$USER/.i3" ]; then  # for manjaro-i3 (community version of manjaro)
    mv $USER/.i3/config $USER/.i3/config.old
    cp i3/config $USER/.i3/config
fi
if [ -d $USER/.config/i3 ]; then
    mv $USER/.config/i3/config $USER/.config/i3/config.old
    cp i3/config $USER/.config/i3/config
fi

