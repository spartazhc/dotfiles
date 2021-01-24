#!/bin/bash

# install vim-plug
if [[ ! -f ~/.vim/autoload/plug.vim ]];then
    echo "installing vim-plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "vim-plug installed"
fi
# install ohmyzsh
if [[ ! -d ~/.oh-my-zsh ]];then
    echo "installing ohmyzsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "ohmyzsh installed"
fi
# install zplug
if [[ ! -d ~/.zplug ]];then
    echo "installing zplug"
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    echo "zplug installed"
fi
# echo "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh" >> ~/.bashrc
# source ~/.bashrc
if [[ ! -d ~/.tmux/plugins/tpm ]];then
    echo "installing tpm"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "tpm installed"
fi
