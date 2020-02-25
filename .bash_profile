
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

# Npm
alias np='npm run'
alias npl='npm run lab'
alias npb='npm run build:prod'
alias npd='npm run dev'
alias nps='npm run start'

# Pip
alias pipr='pip install -r'

# Virtual env
alias venv='source venv/bin/activate'

# Docker
alias dock='docker-compose'
alias dockup='docker-compose exec web bash'

# Dokku
alias dokku="ssh -t dokku@staging.torchbox.com "
alias dokkuff="ssh -t dokku@ff-apps.dh.bytemark.co.uk " # Football foundation

# Vagrant
alias v='vagrant'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias vp='vagrant provision'

# Project aliases
alias pushstaging='git push lffp-beth beth-staging:master'

# Passwords
alias pwman='ssh bmenzies@pw.torchbox.com'

export PATH=~/bin:$PATH
export NODE_PATH="$NODE_PATH:$(npm root -g)"
# Add ~/.local/ to PATH
export PATH=$HOME/.local/bin:$PATH

##
# Your previous /Users/bmenzies/.bash_profile file was backed up as /Users/bmenzies/.bash_profile.macports-saved_2019-04-10_at_17:40:55
##

# MacPorts Installer addition on 2019-04-10_at_17:40:55: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
