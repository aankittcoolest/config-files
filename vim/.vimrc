set nocompatible
filetype off

syntax on
filetype indent on
let mapleader=','
set smartindent
set scrolloff=5
set wildmenu
set gdefault
set hlsearch
set incsearch

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
	autocmd Filetype javascript nnoremap <buffer> <leader>r :!node %<cr>
	autocmd Filetype javascript nnoremap <buffer> <leader>c I//<esc>
	autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup END

augroup phpcmds
	autocmd Filetype php nnoremap <buffer> <leader>r :!phpunit %<cr>
	autocmd Filetype php nnoremap <buffer> <leader>v o var_dump(); die();<esc>0 f)
augroup END

noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
imap jj <esc>

"bundle commands
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin '2072/PHP-Indenting-for-VIm'
