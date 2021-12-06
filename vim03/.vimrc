set nocompatible

"======================== FileType and syntax ========================
filetype on
filetype plugin on
filetype indent on
syntax on
set encoding=utf-8
set spell spelllang=en_us

"======================== Appearance ========================
set number       " Show line number
set laststatus=2 " Show status line
set showmode     " Show current mode on the last line
set showcmd      " Dynamically show command on the last line
set mouse=a      " Enable mouse support. Disable it if need more performance.
set cursorline   " Highlight cursor 's line. Disable it if need more performance.
set ruler        " Show the line and column number of the cursor position in the last line

" Show encoding of the file
if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

"======================== Format and assistance ========================
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent    " Copy indent from current line when starting a new line
set expandtab     " Use the appropriate number of spaces to insert a <Tab>
set noeb vb t_vb= " Disable bell when an error occurred, enable visual bell
set splitright    " Put new window to the right side

"======================== Search ========================
set ignorecase smartcase
set nowrapscan   " Searches wrap around the end of the file.
set incsearch    " While typing a search command, show where the pattern, as it was typed so far, matches.
set showmatch    " When a bracket is inserted, briefly jump to the matching one.
set hlsearch     " When there is a previous search pattern, highlight all its matches.

"======================== Auto-completion ========================
set wildmenu
set wildmode=longest:list,full

"======================== Backup and misc ========================
set nobackup     " Do not make a backup before overwriting a file
set noswapfile   " Do not make a swapfile for the buffer
set history=999  " The size of command-line history
set autoread

" ======================== Mapping ========================
let mapleader = ","

map <silent> <Leader>ss :source $HOME/$VIMCONF<cr>
map <silent> <Leader>ee :e $HOME/$VIMCONF<cr>
autocmd! bufwritepost $VIMCONF source $HOME/$VIMCONF

map <Leader>w :w<cr>
map <Leader>q :q<cr>
map <Leader>z ZZ

" Shortcuts for buffers
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>

" Map navigation splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Map tabs operations
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp :tabprev<CR>
map <Leader>tnew :tabnew<CR>
map <Leader>tc :tabclose<CR>

" Stop highlighted text
nnoremap <Leader><space> :noh<CR>

" ======================== Clipboard ========================

" To paste from another application:
" 1. Start insert mode.
" 2. Press F2 (toggles the 'paste' option on).
" 3. Use your terminal to paste text from the clipboard.
" 4. Press F2 (toggles the 'paste' option off).
" Then the existing indentation of the pasted text will be retained.
set pastetoggle=<F2>
