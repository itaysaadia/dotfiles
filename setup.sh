#!/bin/sh

# VIM
if [ -f "$HOME/.vimrc" ]; then
    mv $HOME/.vimrc $HOME/.vimrc.old  # creating backup of the last vimrc
    cp vim/vimrc $HOME/.vimrc
     cp vim/vim_runtime $HOME/.vim_runtime
fi

# i3
if [ -d "$HOME/.i3/" ]; then  # for manjaro-i3 (community version of manjaro)
    echo "backuping you old i3 config..."
    mv $HOME/.i3/config $HOME/.i3/config.old
    echo "your old i3 config in the path "
    echo $HOME/.i3/config.old
    echo "finishing your new i3config file!"
    cp i3/config $HOME/.i3/config
    echo "i3 configuration done."
fi
if [ -d $HOME/.config/i3/ ]; then
    mv $HOME/.config/i3/config $HOME/.config/i3/config.old
    cp i3/config $HOME/.config/i3/config
fi
