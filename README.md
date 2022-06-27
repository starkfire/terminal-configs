# `terminal-configs`

A repository for storing my terminal configs for Vim and [Hyper](https://hyper.is/).

**DISCLAIMER:** Yes, it has nothing fancy to bring to the table.

## Directory Structure
* [/hyper](): configs I use with [hyper](https://hyper.is/).
* [/vim](): contains basic `.vimrc` configs which I use for Vim (separate `.vimrc` for Windows and Linux).

## Plugins

### Hyper
* [hyper-dracula](https://draculatheme.com/hyper)

### Vim
* [preservim/nerdtree](https://github.com/preservim/nerdtree)
* [dense-analysis/ale](https://github.com/dense-analysis/ale)
* [vim-afterglow](https://github.com/danilo-augusto/vim-afterglow)

## FAQ
### **What's the difference with your `.vimrc` for Linux and Windows?**

Even if they look similar, I had to use a slightly different config for Windows to address Windows Terminal's incompatibility with Vim's color schemes (see this [issue](https://superuser.com/questions/682564/colorscheme-in-vimrc-not-working)).

[Solution](https://stackoverflow.com/questions/15375992/vim-difference-between-t-co-256-and-term-xterm-256color-in-conjunction-with-tmu):

```
set t_Co=256

" theme goes here
colorscheme afterglow
```