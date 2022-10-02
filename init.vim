
let g:syntastic_java_checkers = []
set completeopt-=preview
"let g:loaded_youcompleteme = 1
set autoread
set shortmess=a
set hlsearch

set langmenu=none
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on             " Enable syntax highlighting

"filetype plugin on

set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


"
" set isk+=-
"
"https://stackoverflow.com/questions/4256697/vim-search-and-highlight-but-do-not-jump
"search時にnext jumpしないようにする
nnoremap * *``


let mapleader = ","



"prettier settings

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

set backspace=indent,eol,start

let g:user_emmet_leader_key=','
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"


"https://stackoverflow.com/a/38258720/4624070
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction







"
"https://vi.stackexchange.com/questions/26421/cant-search-for-strings-within-hidden-files-with-fzfs-rg-command-in-vim
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)


lua <<EOF
require("init")
EOF




let $FZF_DEFAULT_COMMAND = "rg --files --follow --no-ignore-vcs --hidden -g '!{**/node_modules/*,**/.git/*}'"
