## misc

alias dsknfo='sudo fdisk -l'
alias sfroot='sudo find / -name'
alias sf.='sudo find ./ -name'
alias k9='kill -9'
alias jcxe='journalctl -xe'
alias wifiup="sudo systemctl stop network-manager && \
		sudo systemctl start network-manager && \
		  sudo systemctl reload network-manager"
alias apr='apropos'
alias pnf='pinfo'
alias top='htop'
alias open='xdg-open'
alias ps-aux='ps aux | fzf'
alias cpu='ps -eo pcpu,pid,user,args | sort -k1 -r -n | head -10'
alias ports='sudo lsof -i -P -n'
alias nz='nvim ~/.zshrc'
alias np='nvim ~/eid/environment/aws/.params'
alias ns='nvim ~/.secrets'
alias nzp='nvim ~/.zprofile'
alias digip='dig +short myip.opendns.com @resolver1.opendns.com'
alias curlip='curl ifconfig.me'
alias spd="wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py && chmod +x speedtest-cli && ./speedtest-cli"
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

## ssh

alias sshconf='nvim ~/.ssh/config'
alias sage='eval "$(ssh-agent -s)"'
alias nuc='ssh all-svcs-ansible'
alias ops='ssh demo-svcs-ops'

## ror

alias rdbm='rake db:migrate'
alias rs='rails server'
alias bi='bundle install'
alias rdbc='rake db:create'
alias rkr='rake routes'
alias rgu='rvm gemset use'
alias rgc='rvm gemset create'
alias rgl='rvm gemset list'
alias rgd='rvm gemset delete'

## python

alias pe='pipenv'
alias po='poetry'

## helm

alias hls='helm list --tls --tiller-namespace=tiller-system -d'

## distro pkg mgr

#alias sas='sudo apt search'
#alias sagu='sudo apt-get update'
#alias sagi="sudo apt-get install"
#alias sagr='sudo apt-get remove'
#alias sagp='sudo apt-get purge'
#alias dnfi='sudo dnf install'
alias dnfu='sudo dnf update'
alias dnfr='sudo dnf remove'
alias dnfs='sudo dnf search'
alias dnfd='sudo dnf distro-sync'
alias dnfi='sudo dnf install'

## docker

alias dkrcu='docker-compose up'
alias dkrcb='docker-compose build'
alias dc-serve="dc run --service-ports"
alias dkrr='docker run -it --rm '
alias dkrex='docker exec -it'
alias dkri='docker images'
alias dkrc='docker ps -a'
alias dkrb='docker build .'
alias dkra='docker attach'
alias dstart='docker start'
alias dstop='docker stop'
alias dkr='docker'
alias dkrin='docker inspect'
alias dkrstart='sudo systemctl start docker'
alias dorker='docker'
alias dkrmstc='docker rm $(docker ps -a -q)'
alias dkrrmc='docker rm $(docker ps -a -q)'
alias dkrmunti='docker rmi -f $(docker images -q --filter "dangling=true")'

## selinux 

alias seloff='sudo setenforce 0'
alias selon='sudo setenforce 1'

## neovim

alias na='nvim ~/.config/zsh/std_aliases.zsh'
alias nv='nvim ~/.config/nvim/init.vim'
alias nvs='nvim ~/.config/nvim/general/settings.vim'
alias v='nvim'
alias vi='nvim'

## git

alias ga='git add '
alias gst='git status '
alias gb='git branch '
alias gi='git init '
alias gck='git checkout'
alias gckm='git checkout master'
alias gl='git log --oneline'
alias gh='git hist'
alias gcm='git commit -m'
alias gr='git remote -v'
alias gpo='git push origin'
alias gp='git push'
alias gplom='git pull origin master'
alias grao='git remote add origin'
alias grro='git remote remove origin'
alias grr='git remote remove '
alias gra='git remote add '
alias gd='git diff'

## tmux

alias tm="tmux -f ~/.config/tmux/tmux.conf"
alias tmn="tmux new -f ~/.config/tmux/tmux.conf -s"
alias tmls="tmux list-sessions"
alias tma="tmux attach -t"
alias tmk="tmux kill-session -t" 
alias tmkser="tmux kill-server"
alias ntm="nvim ~/.config/tmux/tmux.conf"
alias stm="tmux source-file ~/.config/tmux/tmux.conf"

## alacritty 

alias nala="nvim ~/.config/alacritty/alacritty.yml"

## zsh

alias sz='source ~/.zshrc'


## aws-creds tools

alias av="aws-vault"
alias av-eid="aws-vault exec default -- "


## terraform

alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfaauto='terraform apply --auto-approve'
alias tfwl='terraform workspace list'
alias tfwn='terraform workspace new'
alias tfwsel='terraform workspace select'
alias tfwdel='terraform workspace delete'
alias tfwsho='terraform workspace show'

### k8s

alias kctl='kubectl'
alias kconf='nvim ~/.kube/config'
alias kctldeletecomplete="kubectl get pods --all-namespaces | grep Completed | awk '{print $2 " -n=" $1}' | xargs kubectl delete pod"
alias kdescpodops="kctl describe pod -n ops-tools"
alias kprox="kubectl proxy"
alias ksvc="kubectl get svc -o wide"
alias ksvcall="ksvc --all-namespaces"
alias ksvcdesc="kubectl describe svc"
alias kdep="kubectl get deployment"
alias kdepall="kdep --all-namespaces"
alias kdepdesc="kubectl describe deployment"
alias kpod="kubectl get pods -o wide"
alias kpodtime="kubectl get pod --sort-by=.status.startTime --all-namespaces"
alias kpodops="kpod -n ops-tools"
alias kpoding="kpod -n ingress"
alias kpodall="kpod --all-namespaces"
alias kjoball="kctl get jobs --all-namespaces"
alias kpoddesc="kubectl describe pod"
alias kapp="kubectl apply -f"
alias kdelsvc="kubectl delete svc"
alias kdeldep="kubectl delete deployment"
alias kdeling="kubectl delete ingress"
alias king="kubectl get ingress -o wide"
alias klog="kubectl logs"
alias klogks="klog -n kube-system -f"
alias kloging="klog -n ingress -f"
alias klogops="klog -n ops-tools -f"
alias mk="minikube"
alias kmk="kctl config use-context minikube"
alias kstg="kctl config use-context staging"
alias kprd="kctl config use-context prod"
alias knode="kctl get nodes -w"
alias kresources="kubectl api-resources"



