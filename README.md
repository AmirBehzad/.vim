.vim
========

My .vimrc configuration and plugins.
Influenced from [Carlos](https://github.com/carloslima).

This is forked from [Farzad](https://github.com/farzadghanei/dotfiles) which is originally based on [carloslima/dotfiles](https://github.com/carloslima/dotfiles).
I've also customized it a bit, with some tricks that I learned from [Athar](https://github.com/atharh), and [Khairi](https://github.com/khairihafsham).

The used colorscheme is [Gotham](https://github.com/whatyouhide/vim-gotham).

## Installation
```
$ cd ~

$ git clone https://github.com/AmirBehzad/.vim.git

$ git clone https://github.com/powerline/fonts.git /tmp/fonts

$ (cd /tmp/fonts; ./install.sh)

$ mkdir ~/.vim_backup

$ echo "source ~/.vim/vimrc" > ~/.vimrc

$ vim +PluginInstall +qall
```
* In Linux, configure your Terminal Emulator to use the font "Source Code Pro for Powerline, 11".
* In OSX, configure iTerm to use "Source Code Pro for Powerline, 12" for non-ASCII Font.
