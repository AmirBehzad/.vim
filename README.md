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

$ cat <<EOF >> ~/.gtkrc-2.0
style "vimfix" { bg[NORMAL] = "#0c1014" }
widget "vim-main-window.*GtkForm" style "vimfix"
EOF

```
* In Linux, configure your Terminal Emulator to use the font "DejaVu Sans Mono for Powerline, 11".
* In OSX, configure iTerm to use "Source Code Pro for Powerline, 12" for non-ASCII Font.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/amirbehzad/.vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

