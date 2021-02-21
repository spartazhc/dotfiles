# Dotfiles

Dotfile configurations used by myself. [dotbot](https://github.com/anishathalye/dotbot) is used for managing dotfiles.

## Tool-specific frameworks

### tmux

Use [TPM](https://github.com/tmux-plugins/tpm) to manage tmux plugins.

TPM need to be installed manually:

```bash
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

TPM configurations has been written to `.tmux.conf`, just press `prefix` + <kbd>I</kbd> to fetch the plugins in tmux environment.

### vim

Use [vim-plug](https://github.com/junegunn/vim-plug) to manage vim plugins.

vim-plug need to be installed manually:

```bash
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Same as TPM, configurations for vim-plug has been written to `.vimrc`, use `:PlugInstall` to install plugins.

### zplug

Instead of ohmyzsh, I choose zplug as zsh configuration framework for managing plugins from different source easily.

Install manually and there will be interactive plugins installation guide.

```bash
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```
