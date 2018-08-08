export CLICOLOR=1
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export LC_ALL=en_GB.UTF-8
export TERM=xterm-256color
export VISUAL=vim
unset MAILCHECK

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -lah"

shopt -s autocd
shopt -s cdable_vars
shopt -s dotglob
shopt -s no_empty_cmd_completion
shopt -s nocaseglob

# Bash completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi
