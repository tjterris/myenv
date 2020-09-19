" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else

  " Themes
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/themes/onedark.vim

  " Plugin Configuration
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/ale.vim
"  source $HOME/.config/nvim/plug-config/coc.vim
"  source $HOME/.config/nvim/plug-config/polyglot.vim
"  source $HOME/.config/nvim/plug-config/sneak.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua

endif


" Add paths to node and python here
if !empty(glob("$HOME/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

