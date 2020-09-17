zmodload zsh/zprof


[ -f $HOME/.oh-my-zsh/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.config/zsh/std_aliases.zsh ] && source $HOME/.config/zsh/std_aliases.zsh
[ -f $HOME/.config/zsh/fzf.zsh ] && source $HOME/.config/zsh/fzf.zsh
[ -f $HOME/.secrets ] && source $HOME/.secrets
[ ! -f $HOME/.tmux.conf ] && ln -s $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf 

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

good_history(){ 
  exit_status=$?
  if ((!exit_status)); then 
     history 1 >> ~/.zsh_history.0
  fi
}

#if [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new -s default
#fi

