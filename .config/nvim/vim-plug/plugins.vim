" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'
  else

    " Themes
   " Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim'

    " autocomplete 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Sneak
    "  Plug 'justinmk/vim-sneak'

    " auto set indent settings
   " Plug 'editorconfig/editorconfig-vim'
   
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
   
    " Status Line
"    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
   
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
   
    " Git
    Plug 'tpope/vim-fugitive'

    " File explorer
"    Plug 'kevinhwang91/rnvimr'
   
    " Terminal
"    Plug 'voldikss/vim-floaterm'
   
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
 
    " Don't forget key mappins
"    Plug 'liuchengxu/vim-which-key'
  
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
