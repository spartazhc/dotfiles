# dotfile
dotfile configurations used by myself.

## tmux

use [TPM](https://github.com/tmux-plugins/tpm) to manage tmux plugins.

TPM need to be installed manually:

```bash
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

TPM configurations has been written to `.tmux.conf`, just press `prefix` + <kbd>I</kbd> to fetch the plugins in tmux environment.

## vim

use [vim-plug](https://github.com/junegunn/vim-plug) to manage vim plugins.

vim-plug need to be installed manually:

```bash
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Same as TPM, configurations for vim-plug has been written to `.vimrc`, use `:PlugInstall` to install plugins.

