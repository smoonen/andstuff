# .bash_profile
#
# --
# 2010-09-04 : Scott Moonen : Created

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
BASH_ENV=$HOME/.bashrc
EDITOR=/usr/bin/vi

export BASH_ENV PATH EDITOR

alias clean='find . -name \*~ | xargs rm'

set -o vi

umask 002

