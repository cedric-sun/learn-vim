" --------------------Vundle Plugin--------------------
"  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------------General configuration--------------------
set nocompatible
set number
set relativenumber
set ruler
set laststatus=2
set tabstop=8
set noexpandtab
set autoindent
set encoding=utf-8
set backspace=indent,eol,start
set hls
set exrc
set secure
set belloff=esc,backspace,error
syntax on

" --------------------GVim conf--------------------
if has('gui_running')
	set guioptions-=T  " no toolbar
	set lines=52
	set columns=90
	set linespace=0  "only affect gvim, no effect in console
	if has('gui_win32')
		set guifont=Consolas:h12:cANSI
	else
		set guifont=DejaVu\ Sans\ Mono\ 12
	endif
endif

" --------------------General KeyMap--------------------
noremap <S-CR> <END>
nnoremap <CR> i<CR><ESC>
nnoremap <C-CR> o<ESC>
nnoremap <SPACE> i<SPACE><RIGHT><ESC>
nnoremap <BACKSPACE> i<BACKSPACE><RIGHT><ESC>

inoremap <S-CR> <END>
inoremap <C-CR> <END><CR>
inoremap <C-BACKSPACE> <C-w>
inoremap {<CR> {<CR>}<ESC>O
inoremap <F12> <C-r>=strftime("%Y-%m-%d")<CR>
inoremap <C-ESC> <C-o>
cnoremap <F12> <C-r>=strftime("%Y-%m-%d")<CR>
vnoremap <C-y> "+y
nnoremap <C-p> "+p
vnoremap <LEADER>/ y/<C-r>"<CR>
nnoremap <LEADER>y "+yiw
nnoremap <M-o> o<ESC><UP><END>
nnoremap <M-O> O<ESC><DOWN><END>
inoremap <C-n> <ESC>f)i,<SPACE>

" --------------------Theme & Visual Effect--------------------
if has('gui_running')
	colorscheme desert
endif
