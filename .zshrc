# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

autoload -Uz compinit promptinit
compinit
promptinit


#-------------------------------#
#          OH-MY-ZSH            #
#-------------------------------#

ZSH='/usr/share/oh-my-zsh'
ZSH_THEME='mh'

source "$ZSH/oh-my-zsh.sh"

#-------------------------------#

export EDITOR=/usr/bin/vim

