"syntax enable                           " Enables syntax highlighing
set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
set hidden                              " Required to keep multiple buffers open 
set nowrap                              " Display long lines as just one line
set nohlsearch                          " Don't highlight search matches
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			" Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set relativenumber                      " Rel line numbers
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set backspace=start,eol,indent
set background=dark                     " tell vim what the background color looks like
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set autochdir                           " Your working directory will always be the same as your working directory
set updatetime=300                      " Faster completion, ideal for coc
"set timeoutlen=100                      " By default timeoutlen is 1000 ms
set autoindent
set smartindent
set cmdheight=1                         " cmd window height as small as possible
set noswapfile
set shortmess+=c                        " Don't pass messages to ins-completion-menu, ideal for coc
set ignorecase
set smartcase
set clipboard=unnamedplus               " Copy paste between vim and everything else
set termguicolors                       " Required for colorizer
set grepprg=rg\ --vimgrep\ --smart-case\ --follow " use ripgrep instead of built-in vimgrep
let g:netrw_banner = 0                  " Disable netrw banner
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set foldcolumn=2                        " Folding abilities

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" correct comment syntax highlighting for jsonc 
autocmd FileType json syntax match Comment +\/\/.\+$+

" Jenkinsfile VIM syntax highlighting
au BufNewFile,BufRead Jenkinsfile setf groovy

"set wildmenu
"set wildmode=longest:full,full
"set expandtab
