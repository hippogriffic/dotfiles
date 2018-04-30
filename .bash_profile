
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    # Source bash completion.
    source $(brew --prefix)/etc/bash_completion

    # Get bash completion working for the global git alias.
    __git_complete g __git_main
fi

# Colours
MAGENTA="\033[1;31m"
ORANGE="\033[1;33m"
GREEN="\033[1;32m"
PURPLE="\033[1;35m"
WHITE="\033[1;37m"
RESET="\033[m"

GIT_PS1_SHOWDIRTYSTATE=True
GIT_PS1_SHOWSTASHSTATE=True
GIT_PS1_SHOWUNTRACKEDFILES=True
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=True

PS1="\[$GREEN\]\u\[$RESET\]@\[$GREEN\]\h: \[$RESET\]\W\[$ORANGE\]\$(__git_ps1)\[$RESET\]: "

# Aliases

# cd
alias ..='cd ..'
alias ...='cd ../..'

# Git
alias g='git'

# Pip
alias pipr='pip install -r'

# Virtual env
alias venv='source venv/bin/activate'

# Docker
alias dock='docker-compose'
alias dockup='docker-compose exec web bash'

# Vagrant
alias v='vagrant'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias vp='vagrant provision'

export PATH=~/bin:$PATH
