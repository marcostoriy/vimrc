"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible                "Be iMproved

"  Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" NeoBundle 'mitechie/pyflakes-pathogen'
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'https://github.com/davidhalter/jedi-vim.git'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'http://github.com/m2ym/rsense' 
"NeoBundle 'Lokaltog/powerline'
"NeoBundle 'Valloric/YouCompleteMe'
   
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


"NERDTREE
  "autocmd VimEnter * NERDTree
  "autocmd BufEnter * NERDTreeMirror

"autocmd VimEnter * :set number
  "autocmd VimEnter * wincmd p
" auto close NERD Tree if the last code window is closed
  "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  "autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

nnoremap <silent> <C-b> :bp\|bd #<CR>

" Remap to next/previous buffers ctrl-l/h
nnoremap <silent> <C-l> :bn<CR>
nnoremap <silent> <C-h> :bp<CR>


"Alternative mappings
imap jk <ESC>

"NERDCOMMENTER
"Mapping C-t to comment in visual and normal modes. 
"C-t is usually mapped to tag stack but since it is unused... 
nmap <C-t> <plug>NERDCommenterToggle
vmap <C-t> <plug>NERDCommenterToggle


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab
set t_Co=256
set laststatus=2
colorscheme railscasts
