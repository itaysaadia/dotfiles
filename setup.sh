#!/bin/sh

# VIM
if [ -f "$HOME/.vimrc" ]; then
    mv $HOME/.vimrc $HOME/.vimrc.old  # creating backup of the last vimrc
    cp vim/vimrc $HOME/.vimrc
    cp vim/vim_runtime $HOME/.vim_runtime
fi
else
    echo "ERROR: VIM is not installed"
    exit 1
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
elif [ -d $HOME/.config/i3/ ]; then
    mv $HOME/.config/i3/config $HOME/.config/i3/config.old
    cp i3/config $HOME/.config/i3/config
fi
else
    echo "WARN: i3wm is not installed"
fi

# zsh
if [ -d $HOME/.oh-my-zsh ]
    echo "found oh-my-zsh!"
    echo "moving the zshrc config"
    cp zsh/zshrc $HOME/.zshrc
    echo "zshrc moved. yay!"
    # add oh-my-zsh
    echo "downloading oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    # add spaceship prompt
    echo "downloading spaceship-prompt for oh-my-zsh"
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    # add zsh autosuggestions
    echo "adding zsh autosuggestions"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    # TODO lol add the rest of the things
fi
else
    echo "oops! looks like oh my zsh not installed!"

fi
