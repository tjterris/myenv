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
#export FZF_DEFAULT_COMMAND="fd --follow --exclude '.git' --exclude 'node_modules' --hidden"
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
"
#--bind 'ctrl-a:select-all'
#--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
#--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
#--bind 'ctrl-v:execute(code {+})'

export HISTSIZE=500000
export HISTFILESIZE=100000000
export HISTORY_IGNORE='(ls*|ll*|pwd|cat*|echo*|cd ..*|history|gst*|ga *|sz|nz|nzp|v*|which *|man *|fzf)'

export KUBE_EDITOR="nvim"
