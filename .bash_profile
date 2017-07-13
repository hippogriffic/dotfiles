if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    # Source bash completion.
    . $(brew --prefix)/etc/bash_completion

    # Get bash completion working for the global git alias.
    __git_complete g __git_main
fi

alias ll='ls -la'
alias git='hub'

alias g='git'

export PATH=~/bin:$PATH
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

eval "$(rbenv init -)"

# virtualenvwrapper
export WORKON_HOME=~/.venvs
export PROJECT_HOME=~/Projects
source /usr/local/bin/virtualenvwrapper.sh

GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
YELLOW="\[\033[0;33m\]"

GIT_PS1_SHOWDIRTYSTATE=True
GIT_PS1_SHOWSTASHSTATE=True
GIT_PS1_SHOWUNTRACKEDFILES=True
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=True

PS1="$GREEN\h $WHITE\W$YELLOW\$(__git_ps1)$WHITE: "

export NODE_PATH="$NODE_PATH:$(npm root -g)"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
