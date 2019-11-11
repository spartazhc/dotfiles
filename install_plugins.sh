sudo apt install curl -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh" >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
