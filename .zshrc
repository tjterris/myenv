zmodload zsh/zprof
ZSH_THEME="honukai"
HIST_STAMPS="mm/dd/yyyy"


[ -f $HOME/.oh-my-zsh/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.config/zsh/std_aliases.zsh ] && source $HOME/.config/zsh/std_aliases.zsh
[ -f $HOME/.config/zsh/fzf.zsh ] && source $HOME/.config/zsh/fzf.zsh

source ~/.secrets

## auto complete features for kubectl and helm
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
if [ $commands[helm] ]; then source <(helm completion zsh); fi

## removes duplicate entries from PATH, if any exist
typeset -aU path

## initialize pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

## enable poetry autocomplete ~/.zfunc/_poetry
fpath+=~$HOME/.config/zsh/.zfunc


#bindkey -v
