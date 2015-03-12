if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

case $- in
  *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion
  ;;
esac

#export PS1="[\$(date '+%Y/%m/%d %T')] \[\e[31m\]\u\[\e[0m\]@\h:\n\w\n\[\e[31m\]\$\[\e[0m\]"
#export PS1="[\w]: "
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin

case "${OSTYPE}" in
darwin*)
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls="ls -G"
  ;;
linux*)
alias ls='ls --color=auto'
  ;;
esac

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
set -o noclobber
