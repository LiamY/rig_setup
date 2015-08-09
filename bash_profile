# git terminal configuration
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# color scheme setup
# export PS1="\[\033[0;31m\]\u\[\033[1;34m\]\[\033[47m\]@\[\033[0;33m\]\h:\[\033[33;36m\]\w\[\033[m\]\$ "
export PS1="\n\e[0;36m|\e[0;32mPhalanx Config\e[0;36m| \e[0;33mv1.0"
export PS1+="\$(parse_git_branch)\n"
export PS1+=" \[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h:\[\033[33;36m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"

#------------ ALIASES
# Generic

# alias node="env NODE_NO_READLINE=1 rlwrap node"
alias ll="ls -la"

# Docker
alias dockerrmleaves="docker rmi \$(docker images -f 'dangling=true' -q)"

#------------ APPLICATION SETUP

# rbenv setup
eval "$(rbenv init -)"

# tab completion for git commands
source ~/git-completion.bash

# docker connection setup
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/workstation/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

#Path Modification
export PATH=$PATH:/Users/workstation/Applications # concourse setup for fly cli
export PATH=$PATH:/Users/workstation/bin # lattice cli setup
