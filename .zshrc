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


#-------------------------------#
#             ALIAS             #
#-------------------------------#

# Directory aliases
alias master='~/ecn/EI3/master'
alias doctorat='~/ecn/EI3/doctorat'


#-------------------------------#
#           TRAMPOLINE          #
#-------------------------------#
export PATH=$PATH:/home/fasol/ecn/ei3/master/tools/gcc-arm-none-eabi-8-2018-q4-major/bin:/home/fasol/ecn/ei3/master/tools/goil
