set nocompatible
filetype on

" set default encoding
set encoding=utf-8

" setup omni completion (intelligent code completion)
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'danilo-augusto/vim-afterglow'
Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'

" All of your Plugins must be added before the following line
call vundle#end()

" enable plugins and load plugin for detected file type
filetype plugin on
" load indent file for detected file type
filetype indent on

" syntax highlighting
syntax on

" highlight cursor line underneath the cursor horizontally
set cursorline
" highlight cursor line underneath the cursor vertically
" set cursorcolumn

" set line numbering
set number

" shift width
set shiftwidth=4
" tab width
set tabstop=4
" use space instead of tabs
set expandtab
" do not save backup files
set nobackup
" do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=10
" do not wrap lines
set nowrap
" while searching through a file incrementally highlight matching characters
" as you type
set incsearch

" ignore capital letters during search
set ignorecase

" override ignorecase option if searching for capital letters
set smartcase

" show partial command you type in the last line of the screen
set showcmd

" show the mode you are on the last line
set showmode

" show matching words during a search
set showmatch 

" use highlighting when doing a search
set hlsearch

" set commands to save in history
set history=1000

" enable autocompletion menu after pressing TAB
set wildmenu

" make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" wildmenu will ignore the following extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx

" STATUS LINE------------------------------
" https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641

" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e


" COLOR SCHEME----------------------------------

" added this fix for compatibility with Windows Terminal (feel free to remove if you don't need it)
set t_Co=256

" feel free to replace this with your own color scheme of choice
colorscheme afterglow
let g:airline_theme='afterglow'
