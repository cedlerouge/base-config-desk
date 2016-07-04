alias ls='ls -lh --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -Alh --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias rr='rm -rf'
alias md='mkdir -p'
alias c='clear'


# seen on zanshin 's git repo
# https://github.com/zanshin/dotfiles

# get process
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# sort by size
alias dus='du -sckx * | sort -nr'

# Git 
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreed(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gcm='git commit'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv="git log --pretty=format:'%s' | cut -d ' ' -f 1 | sort | uniq -c | sort -nr"
alias gdb='git diff master..`git rev-parse --abbrev-ref HEAD`'
alias gr='git diff master..'

# leverage an alias from the ~/.gitconfig
alias gh='git hist'
alias gt='git today'

# curiosities
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc-l"

# guser shows a list of all developers and the number of commits they've made
alias guser="git shortlog | grep -E '^[^ ]'"

# ect (Edit Changed in Tabs) opens all foles marked as changed by Git in tabs
alias ect="git status --short | awk '{print $2}' | xargs -o nvim"

# Python virtualenv 
alias mkenv='mkvirtualenv'
alias on='workon'
alias off='deactivate'


# Vagrant 
alias vg='vagrant'
alias vs='vagrant ssh'
alias vu='vagrant up'
alias vp='vagrant provision'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vd='vagrant destroy'
alias vgs='vagrant global-status'

# Docker
alias dm='docker-machine'
alias dmenv='eval "$(docker-machine env local)"'

alias d='docker'
alias dclean='docker rm -v $(docker ps -aq -f status=exited)'

# Tmux 
alias takeove='tmux detach -a'
alias tatt='tmux attach -t base || tmux new -s base'
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tls='tmux ls'
alias tk='tmux kill-session -t'

# tmux scripts 
#alias blog='~/.dotfiles/scripts/blog'
#alias dev='~/.dotfiles/scripts/chef'
#alias console='~/.dotfiles/scripts/console'
#alias tools='~/.dotfiles/scripts/tools'
#alias deploy='~/.dotfiles/scripts/deploy'

# force tmux to use 256 colors
# alias tmux='TERM=screen-256colors tmux'
alias tmux='tmux -2'
