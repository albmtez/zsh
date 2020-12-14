syntax enable
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set relativenumber
set cursorline
set splitbelow
set splitright

let mapleader=" "

inoremap <C-i> <Esc>

" Open a file throw the explorer
nnoremap <silent> <leader>o :Explore<CR>
" Save changes
nnoremap <silent> <C-s> :w<CR>
" Save file as
nnoremap <silent> <C-s>a :w<Space>
" Quit
nnoremap <silent> <C-q> :q<CR>
" Force quit
nnoremap <silent> <C-q>f :q!<CR>

" -------------------------------------
" - Toggle configurations
" ------------------------------------
" Toggle line numbers
nnoremap <silent> <leader>tn :set number! number?<CR>
" Toggle line relative numbers
nnoremap <silent> <leader>tr :set relativenumber! relativenumber?<CR>
" Toggle long lines wrapping
nnoremap <silent> <leader>tw :set wrap! wrap?<CR>

" -------------------------------------
" - Windows navigation
" -------------------------------------
" Move to the left window 
nnoremap <silent> <leader>h <C-w><Left>
" Move to the right window
nnoremap <silent> <leader>l <C-w><Right>
" Move to the window above 
nnoremap <silent> <leader>k <C-w><Up>
" Move to the window below
nnoremap <silent> <leader>j <C-w><Down>

" -------------------------------------
" - Buffers key mapping
" -------------------------------------
" Edit file in new buffer
nnoremap <silent> <leader>bo :e<Space>
" Horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>
" Vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>
" List buffers
nnoremap <silent> <leader>bl :ls<CR>
" List buffers and select one
nnoremap <silent> <leader>bc :ls<CR>:buffer<Space>
" Switch between current and last buffer
nnoremap <silent> <leader>bb <C-^>
" Go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
" Go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
" Close actual buffer
nnoremap <silent> <leader>bd :bd<CR>
" Kill actual buffer
nnoremap <silent> <leader>bk :bd!<CR>

