set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'valloric/youcompleteme'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'alpaca-tc/vim-endwise'
Plugin 'alvan/vim-closetag'
Plugin 'davidhalter/jedi-vim'
Plugin 'michalliu/sourcebeautify.vim'
autocmd vimenter * NERDTree
nmap \e :NERDTreeToggle<CR>
Plugin 'ryanoasis/vim-devicons'
set encoding=utf-8
set guifont=DroidSansMono\ Nerd\ Font\10  
" All of your Plugins must be added before the following line
if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif
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

ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O

:imap <C-c> <Esc>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
:set number
" Ctrl-P stuff
nmap ; :CtrlPBuffer<CR>
nmap \p :CtrlP<CR>
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" capslock to esc
let g:go_term_enabled = 1
" JsBeautify
map <c-f> :call JsBeautify()<cr>

set omnifunc=htmlcomplete#CompleteTags

" ruby autocomplete options
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
let g:closetag_filetypes = 'html,xhtml,phtml,erb'
