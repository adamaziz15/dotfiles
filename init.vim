set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"NeoVim Settings
set clipboard+=unnamedplus

if !has('nvim')
  set ttymouse=xterm2
endif

"vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'jeetsukumaran/vim-buffergator'

call plug#end()

" Key mappings
" -----------
" Open fuzzy finder
map ; :FZF<CR>
" Open global search (silverSearcher)
map <C-f> :Ag<CR>
" Open nerdTree panel
map <C-o> :NERDTreeToggle<CR>
" Clear search term
map _ :let @/=''<CR>
" Fugitive conflict resolution
" map <C-w>gd :Gdiff<CR>
map gdr :diffget REMOTE<CR>
map gdb :diffget BASE<CR>
map gdl :diffget LOCAL<CR>
" Jump to previous prompt in terminal mode
map tt ?🤑<CR>
" Exit terminal-mode
tnoremap <C-q> <C-\><C-n>

" Buffergator command remap
nmap <leader>b :BuffergatorToggle<CR>
nmap <leader>t :BuffergatorTabsToggle<CR>
nmap <leader>c :bd<CR>
nmap ]b :bn<CR>
nmap [b :bp<CR>

" vim-rooter settings
" non-project files will auto change to current dir
let g:rooter_change_directory_for_non_project_files = 'current'
" targets all files and directories
let g:rooter_targets = '/,*'
" change directory for current window only
" let g:rooter_use_lcd = 1

" Neovim ruby support
let g:ruby_host_prog = 'rvm 2.4.4 do neovim-ruby-host'

" Airline buffer display
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_powerline_fonts = 1

" Buffergator
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" Enable fzf
set rtp+=/usr/local/opt/fzf

" Ensure backup folder exists
silent execute '!mkdir "'.$VIMRUNTIME.'/.vim_backup" > /dev/null 2>&1'
" Empty backup folder on start
silent execute '!rm "'.$VIMRUNTIME.'/.vim_backup/"* > /dev/null 2>&1'

" General config
set nowrap
set hidden
set shiftwidth=2
set expandtab
set number
set numberwidth=4
set path+=lib/**,spec/**,app/**,bin/**,config/**,db/**,template/**,src/**
" Backup and undo dirs
set backupdir=$VIMRUNTIME/.nvim_backup//
set directory=$VIMRUNTIME/.nvim_backup//
set undodir=$VIMRUNTIME/.nvim_backup//
" Theme
set t_Co=256
colo 256-grayvim
" Status bar
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
