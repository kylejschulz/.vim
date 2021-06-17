set nocompatible
execute pathogen#infect()

filetype plugin indent on

syntax on
set guifont=Monaco:h12

colorscheme gruvbox

set number

let mapleader=" "

"this speeds things up by keeping things in memory
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent


"this removes whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

set hlsearch

"cancels search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"toggles to previous file
nnoremap <Leader><Leader> :e#<CR>

set showmatch

map <F12> :NERDTreeToggle<CR>

"for Ctrlp.vim  stuff
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"just mapping to out-of-the-box vim commands
map  <C-n> :tabnew<CR>

inoremap jj <Esc>

ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

"adds save/unsave indicator to status line
function! s:goyo_enter()
  setlocal statusline=%M
  hi StatusLine ctermfg=red guifg=red cterm=NONE gui=NONE
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()

set statusline+=%F

nnoremap <Tab> <c-w>w

let NERDTreeShowHidden=1

nmap <Leader>r :NERDTreeFocus<cr> \| R \| <c-w><c-p>

set nobackup                             " no backup files
set nowritebackup                        " don't backup file while editing
set noswapfile                           " don't create swapfiles for new buffers
set updatecount=0                        " Don't try to write swapfiles after some number of updates
set backupskip=/tmp/*,/private/tmp/*"    " can edit crontab files

"React -- Allow for highlighting in .js files along with .jsx
let g:jsx_ext_required = 0

"changes cursor on insert mode
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Force vue syntax hihglighting on vue file load load
autocmd FileType vue syntax sync fromstart

set modelines=0
set nomodeline

Helptags
