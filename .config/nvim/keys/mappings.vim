let mapleader=","

" let localleader=" "
"nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Not sure what this does but groked it from Primeagean
vnoremap <leader>p "_dP

" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

inoremap ;; <Esc>
tnoremap ;; <C-\><C-n>

" move among buffers with CTRL
"nnoremap <C-j> :bprev<CR>
"nnoremap <C-k> :bnext<CR>

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
"SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
" xnoremap K :move '<-2<CR>gv-gv
" xnoremap J :move '>+1<CR>gv-gv

" Alternate ways to escape vim
nnoremap zz :update<CR>
nnoremap QQ :q!<CR>

"nmap <leader>p O<ESC>p
"nmap <leader>p o<ESC>P
"Better window navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" Terminal window navigation
"tnoremap <C-h> <C-\><C-N><C-w>h
"tnoremap <C-j> <C-\><C-N><C-w>j
"tnoremap <C-k> <C-\><C-N><C-w>k
"tnoremap <C-l> <C-\><C-N><C-w>l
"inoremap <C-h> <C-\><C-N><C-w>h
"inoremap <C-j> <C-\><C-N><C-w>j
"inoremap <C-k> <C-\><C-N><C-w>k
"inoremap <C-l> <C-\><C-N><C-w>l

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>
