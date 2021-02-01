#export TERMINAL=alacritty
#export TERM=alacritty
export TERM=xterm-256color
# this ordering of PATH ensures local binaries are seen first
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:$HOME/.fzf/bin
export PATH=$PATH:$HOME/.poetry/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/snap/bin
export PATH=$PATH:$HOME/.tmux/plugins/tpm
export PYENV_ROOT=$HOME/.pyenv
export NVM_DIR=$HOME/.nvm
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="powerlevel10k/powerlevel10k"
export RIPGREP_CONFIG_PATH=$HOME/.config/.ripgreprc
export HISTTIMEFORMAT="[%F %T] "
export HISTSIZE=500000
export HISTFILESIZE=100000000
export HISTORY_IGNORE='(ls*|ll*|pwd|echo*|cd ..*|cat *|history|gst*|ga *|sz|nz|nzp|v *|which *|man *|fzf|gplom|gck*|gst|nuc|tmux*|tmn*|tma*|ntm*|tmls|tmk*|make*|dkrmunti|vi *|kpod)'
export HIST_STAMPS="mm/dd/yyyy"
export KUBE_EDITOR="nvim"
export HELM_HOME="$HOME/.helm"
export HELM_TLS_KEY="$HELM_HOME/key.pem"
export HELM_TLS_CERT="$HELM_HOME/cert.pem"
export POETRY_VIRTUALENVS_CREATE=true
export POETRY_VIRTUALENVS_IN_PROJECT=false
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow -g '!{.git,node_modules}/*' 2> /dev/null"
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' 
--bind '?:toggle-preview'"
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt nosharehistory
#setopt noincappendhistory
