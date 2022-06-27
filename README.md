# `terminal-configs`

A repository for storing my terminal configs for Vim and [Hyper](https://hyper.is/).

## Directory Structure
* [/hyper](https://github.com/starkfire/terminal-configs/tree/master/hyper): configs I use with [hyper](https://hyper.is/).
* [/vim](https://github.com/starkfire/terminal-configs/tree/master/vim): contains basic `.vimrc` configs which I use for Vim (separate `.vimrc` for Linux and Windows).

I styled Vim's status bar using this [gist](https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641) from [meskarune](https://gist.github.com/meskarune).

### Why separate `.vimrc` configs for Linux and Windows?
I use separate `.vimrc` configs for my Linux and Windows workstations. My Linux setup happened to use [Plug](https://github.com/junegunn/vim-plug) for plugin management, while my Windows setup used [Vundle](https://github.com/VundleVim/Vundle.vim).

So in case you are using these configs, you will be using `:PlugInstall` (Plug) or `:PluginInstall` (Vundle) depending on your plugin manager.

Even if the outputs look similar, I had to use a slightly different config for Windows to address Windows Terminal's incompatibility with Vim's color schemes (see this [issue](https://superuser.com/questions/682564/colorscheme-in-vimrc-not-working)).

[Solution](https://stackoverflow.com/questions/15375992/vim-difference-between-t-co-256-and-term-xterm-256color-in-conjunction-with-tmu):

```
set t_Co=256

" theme goes here
colorscheme afterglow
```

## Plugins

### Hyper
* [hyper-dracula](https://draculatheme.com/hyper)

### Vim
* [nerdtree](https://github.com/preservim/nerdtree)
* [ale](https://github.com/dense-analysis/ale)
* [vim-afterglow](https://github.com/danilo-augusto/vim-afterglow)