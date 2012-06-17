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

"spaces instead of tabs
set expandtab

" makes the spaces feel like real tabs (backspace goes back 
"set softtabstop=4

"for the different file types
autocmd FileType python set tabstop=4|set shiftwidth=4

autocmd FileType c set tabstop=3|set shiftwidth=3

"set size
set lines=50 columns=100

"indenting 
set autoindent
set smartindent
set autowrite
