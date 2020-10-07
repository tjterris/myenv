# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f $HOME/.oh-my-zsh/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.secrets ] && source $HOME/.secrets
[ -f $HOME/eid/environment/aws/.params ] && source $HOME/eid/environment/aws/.params
[ -f $HOME/eid/environment/aws/.sshparams ] && source $HOME/eid/environment/aws/.sshparams
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
[ -d $HOME/.config/zsh ] && for f in $HOME/.config/zsh/*.zsh; do source $f; done

# Put tmux conf in path tmux wants
[ ! -f $HOME/.tmux.conf ] && ln -s \
       $HOME/.config/tmux/tmux.conf \
       $HOME/.tmux.conf

#[ $commands[tmux] ] && tmux source $HOME/.config/tmux/tmux.conf 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ ! -f $HOME/.p10k.zsh ] && ln -s \
       $HOME/.config/zsh/.p10k.zsh \
       $HOME/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# auto complete features for kubectl and helm
[ $commands[kubectl] ] && source <(kubectl completion zsh)
[ $commands[helm] ] && source <(helm completion zsh)

# initialize pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# add and enable custom completion scripts
fpath+=$HOME/.config/zsh/zfunc && compinit

# enable vim key bindings in zsh
#bindkey '^a' beginning-of-line
#bindkey '^e' end-of-line
#bindkey '^f' forward-char
#bindkey '^h' backward-delete-char
#bindkey '^k' kill-line
#bindkey '^u' kill-whole-line
#bindkey '^w' backward-kill-word
bindkey '^f' forward-word
bindkey '^b' backward-word


