" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" When F5 is pressed, a numbered list of file names is printed, and the user
" needs to type a single number based on the "menu" and press enter.
" The "menu" disappears after choosing the number so it appears only when you need it.
" The <Space> at the end of the map isn't required, but does help to separate the input from the "prompt".
"  As the :buffer command is being used to perform the switch, the buffer name
"  could be used instead, if preferred.
nnoremap <F5> :w<CR>:buffers<CR>:buffer<Space>

map <F2> :BufExplorer<CR>
map <F3> :BufExplorerVerticalSplit<CR>

"spaces instead of tabs
set expandtab

"syntax on
syntax on

" makes the spaces feel like real tabs (backspace goes back
"set softtabstop=4

"for the different file types
filetype on
autocmd FileType python set tabstop=4|set shiftwidth=4
autocmd FileType sh set tabstop=4|set shiftwidth=4
autocmd FileType c set tabstop=3|set shiftwidth=3
"autocmd FileType c,cpp,python,sh autocmd BufWritePre <buffer> <silent> :%s/\s\+$//e


"indenting
set autoindent
set smartindent
set autowrite

"show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"display search text
set hlsearch

set number

if has("gui_running")
  "set size
  set lines=50 columns=100
  colorscheme morning

  if has("gui_gtk2")
    set guifont=Anonymous\ Pro\ 10
  elseif has("gui_win32")
    set guifont=Anonymous\ Pro:h10
  endif
endif

" CTRL-C are Copy
vnoremap <C-C> "+y

" CTRL-P are Paste
map <C-P> "+gP

" Use CTRL-S for saving, exit insert mode after
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
"jump out of insert mode
inoremap <C-S> <ESC>:update<CR>
