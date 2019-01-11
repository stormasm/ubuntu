
# Golang aliases

alias gop='export GOPATH=${PWD}; export GOBIN=${PWD}/bin; PATH=$PATH:$GOPATH/bin'
alias gopc='env | grep GOPATH'

# User specific aliases and functions

alias c='clear'
alias cp='cp -p'
alias cpba='cp .bash_aliases /home/michael/; source .bash_aliases'
alias cpbar='cp /home/michael/.bash_aliases .; chown root .bash_aliases; chgrp root .bash_aliases; source .bash_aliases'
alias dock='sudo docker'
alias e='emacs'
alias gs='git status'
alias h='history'
alias hc='history -c'
alias kc='kubectl'
alias l='ls -l'
alias lt='ls -lt'

alias g='go run'
alias grh='grep -RH'

alias hclear='history -c'
alias l='ls -l'
alias lm='ls -l | more'
alias lr='ls -lR'
alias lsd='ls -d */'
alias lsg='ls -lR !(.git)'
alias lsr='ls -lR'
alias lss='ls -lS | more'
alias lt='ls -lt'
alias ltm='ls -lt | more'
alias lo='exit'
alias m='make'

alias n='node'
alias p='python'
alias r='ruby'
alias redisc='redis-cli'

alias sp='source .bash_aliases'
alias spme='source ~/.bash_aliases'
alias t=date
alias upgrade='sudo apt-get -y upgrade'
alias y='yarn'

### nginx specific commands

alias ngstart='sudo systemctl start nginx'
alias ngstop='sudo systemctl stop nginx'
alias ngrestart='sudo systemctl restart nginx'
alias ngreload='sudo systemctl reload nginx'
alias ngtest='sudo nginx -t'

### k8s specific commands

alias ub='cd /mnt/k8s/ubuntu'
alias ubc='cd /mnt/k8sc1/ubuntu'
alias ubc1='cd /mnt/k8sc1/ubuntu'
alias k8s='cd /mnt/k8s'
alias k8sc='cd /mnt/k8sc1'
alias k8sc1='cd /mnt/k8sc1'

### git commands

alias jjj='git push origin master'
alias kkk='git push origin gh-pages'

alias ga='git add'
alias gb='git branch'
alias gc='git clone'
alias gco='git checkout'
alias gcobp1='git checkout -b bp1 master'
alias gcobp2='git checkout -b bp2 bp1'
alias gcom='git commit -m'
alias gcomm='git commit -m'
alias gd='git diff'
alias gll='gem list --local'
alias gl='git log'
alias gp='git pull'
alias gsl='git log --stat'
alias gls='git log --stat'
alias gpo='git push origin'
alias grso='git remote show origin'
alias gs='git status'
alias gitsubmodule='git submodule update --init --recursive'
alias ghme='git config --global user.email stormasm@gmail.com;
git config --global user.name "Michael Angerman"'

### Docker commands

alias dinfo='docker info'
alias dkill='docker kill'
alias dps='docker ps'
alias drm='docker rm'

alias dredis='docker run --name rediserver -d redis'
alias dredisc='docker run -it --link rediserver:redis --rm redis redis-cli -h redis -p 6379'

### microk8s commands
#

alias mkinstall='snap install microk8s --classic'
alias mkstatus='microk8s.status'
alias mkstat='microk8s.status'

# Stopping and Restarting MicroK8s
# You may wish to temporarily shutdown MicroK8s when not in use without un-installing it.
# MicroK8s can be shutdown with:

alias mkstop='microk8s.stop'

# MicroK8s can be restarted later with:

alias mkstart='microk8s.start'

# Removing MicroK8s
# Before removing MicroK8s, use microk8s.reset to stop all running pods.

alias mkreset='microk8s.reset'
alias mkremove='snap remove microk8s'
