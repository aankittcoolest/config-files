set nocompatible
filetype off

execute pathogen#infect()

syntax on
filetype plugin indent on
let mapleader=','
set smartindent
set scrolloff=5
set wildmenu
set gdefault
set hlsearch
set incsearch
set colorcolumn=110

"configure syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_poplulate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

nnoremap <leader><space> :noh<cr>

if has('win64')
	" avoid mswin.vim making ctrl-v act as paste
	noremap <c-v> <c-v>
endif

"formats html on file read and write
autocmd bufread,bufwritepre *.html normal gg=g

augroup htmlscriptcmds
	autocmd filetype html nnoremap <buffer> <leader>c i<!--<esc>a--><esc>
	autocmd filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup end

augroup javascriptcmds
	autocmd!
	autocmd Filetype javascript nnoremap <buffer> <lyegappan/mrueader>r :!node %<cr>
	autocmd Filetype javascript nnoremap <buffer> <leader>c I//<esc>
	autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup END

augroup phpcmds
	autocmd Filetype php nnoremap <buffer> <leader>p :!phpunit %<cr>
	autocmd Filetype php nnoremap <buffer> <leader>v o var_dump(); die();<esc>0 f)
augroup END

"Remove mapping for arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
imap jj <esc>

"Configure NERDTree
nnoremap <buffer> <leader>n :NERDTree<cr>

"Configure to close window or screen
nnoremap :qq :q!<cr> 

"Reconfigure command to open recent files
nnoremap :mru :MRU<cr>

"Reconfigure NERDTree to show hidden files
let NERDTreeShowHidden=1

"Reconfigure CtrlP to show hidden files
let g:ctrlp_show_hidden = 1

"Enable powerline fonts | Add some fanciness to tabs
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"Move easier between splitted screens
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:filetype plugin on

"bundle commands
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'yegappan/mru'
Plugin 'shemerey/vim-peepopen'
Plugin 'tomtom/tcomment_vim'



