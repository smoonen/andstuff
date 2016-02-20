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

export BASH_ENV PATH

set -o vi

umask 002

