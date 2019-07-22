source /home/vcap/.bashrc

# check if deps folder exist in this location, if not it will set the variable accordingly
if [ ! -d "/home/vcap/deps" ]; then
 export DEPS_DIR="/home/vcap/app/.deps"
fi

# Needed for apt-buildpack install of psql
export PERLLIB="{$DEPS_DIR}/0/apt/usr/share/perl5"
export PATH="${DEPS_DIR}/0/apt/usr/local/bin:${DEPS_DIR}/0/apt/usr/lib/postgresql/9.6/bin:${DEPS_DIR}/0/bin:${PATH}"
export LD_LIBRARY_PATH="${DEPS_DIR}/0/lib"
export TERM=xterm

#clean bash history if exist

 rm /home/vcap/app/.bash_history 2> /dev/null


# Needed for apt-buildpack install of python 2.7 and pip
#export PYTHONHOME="${DEPS_DIR}/0/apt/usr"
#export CPATH="${DEPS_DIR}/0/apt/usr/include/python2.7:${DEPS_DIR}/0/apt/usr/include"
#export PYTHONIOENCODING=utf8

# Preferences
export EDITOR=vim
export VISUAL=vim
HISTCONTROL=ignoreboth
shopt -s histappend
if [[ $- == *i* ]]
then
    bind '"\e[B": history-search-forward'
    bind '"\e[A": history-search-backward'
fi
