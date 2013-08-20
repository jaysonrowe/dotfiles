# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# cd stuff
alias cdn='cd $(ls -c | head -n1)'
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cdls() { cd "$1" && ls; }

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# yum aliases
alias ycu='sudo yum check-update'
alias yi='sudo yum install'
alias yli='sudo yum localinstall --nogpgcheck'
alias ypr='sudo yum provides'
alias yprw='sudo yum provides $(which$ 1)'
alias yr='sudo yum remove'
alias ys='sudo yum search'
alias yu='sudo yum update'
alias yyi='sudo yum -y install'
alias yyr='sudo yum -y remove'
alias yys='sudo yum -C search'
alias yyu='sudo yum -y update'
alias yyyi='sudo yum -Cy install'

# common directories
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'


# git aliases
alias gpr='git pull --rebase'
alias gpom='git push origin master'
alias gpod='git push origin develop'
alias gaa='git add .'
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias gcm='git commit -m'
alias grb='git rebase'
alias gbr='git branch'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# enable __git_ps1
source /usr/share/git-core/contrib/completion/git-prompt.sh

# ls alias for color-mode
alias lsa='ls -laG'
alias lsl='ls -lG'

# misc
alias df='df -h'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias untar='tar -zxvf'
alias top='htop'

# IP addresses
alias externalip='dig +short myip.opendns.com @resolver1.opendns.com'
alias wifiip='ipconfig getifaddr wlp4s0'
alias lanip='ifconfig getifaddr p5p1'

# grep with color
alias grep='grep --color=auto'

# refresh shell
alias reload='. ~/.bashrc'

# custom prompt
PS1='\[\033[0;32m\][\u@\h \[\033[31m\]\W\[\033[33m\]$(__git_ps1 " (%s)")\[\033[0;32m\]]\\$\[\033[m\] '
