# User specific aliases and functions

alias c='clear'
alias cp='cp -p'
alias e='emacs'
alias gs='git status'
alias h='history'
alias hc='history -c'
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

alias sp='source ~/.bash_aliases'
alias t=date

alias y='yarn'

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

### Docker commands
alias dps='docker ps'
alias dkill='docker kill'

alias dockreds='docker run --name rediserver -d redis'
alias dockredc='docker run -it --link rediserver:redis --rm redis redis-cli -h redis -p 6379'
