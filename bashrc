# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# git commamands simplified
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

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# IP addresses
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# grep with color
alias grep='grep --color=auto'

# refresh shell
alias reload='. ~/.bashrc'

# custom prompt
PS1='\[\033[1;32m\][\u@\h \[\033[31m\]\W\[\033[33m\]$(__git_ps1 " (%s)")\[\033[1;32m\]]\\$\[\033[m\] '
