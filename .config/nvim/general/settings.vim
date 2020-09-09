"syntax enable                           " Enables syntax highlighing
set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
set hidden                              " Required to keep multiple buffers open multiple buffers
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
set laststatus=2                        " Always display the status line
set relativenumber
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set autochdir                           " Your working directory will always be the same as your working directory
set updatetime=300                      " Faster completion
"set timeoutlen=100                      " By default timeoutlen is 1000 ms
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set ignorecase
set smartcase
set clipboard=unnamedplus               " Copy paste between vim and everything else
set termguicolors                       " Required for colorizer
set grepprg=rg\ --vimgrep\ --smart-case\ --follow " use ripgrep instead of built-in vimgrep
"set incsearch
let g:netrw_banner = 0                  " Disable netrw banner
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set foldcolumn=2                        " Folding abilities

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" You can't stop me
"cmap w!! w !sudo tee %

