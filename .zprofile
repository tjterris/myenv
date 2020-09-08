export TERMINAL=alacritty

# ensures local binaries are seen first
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:$HOME/.fzf/bin
export PATH=$PATH:$HOME/.poetry/bin
export ZSH=$HOME/.oh-my-zsh


export RIPGREP_CONFIG_PATH=$HOME/.config/.ripgreprc
#export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

export HISTSIZE=500000
export HISTFILESIZE=100000000
export HISTORY_IGNORE='(ls*|ll*|pwd|cat*|echo*|cd ..*|history|gst*|sz|nz|nzp|v*|which *|man *)'

export KUBE_EDITOR="nvim"
