#umask 0077
umask 0022
PATH=$HOME/bin:$HOME/.cabal/bin:$HOME/bin/node_modules/.bin:$HOME/.gem/ruby/latest/bin:$PATH
#PYTHONPATH=/usr/lib/python3.3/site-packages
#PYTHONPATH=$PYTHONPATH:/usr/lib/python3.3/site-packages
XDG_CONFIG_HOME="/home/eye/.config"
stty -ixon
export PATH
#export PYTHONPATH
export XDG_CONFIG_HOME
export EDITOR=vim
#export BROWSER=firefox
export BROWSER=chromium
export GTK2_RC_FILES="/etc/gtk-2.0/gtkrc:$HOME/.gtkrc-2.0"
#systemctl --user status ssh-agent &>/dev/null  || systemctl --user start ssh-agent &>/dev/null
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh"
#export TERM="rxvt-unicode"
if [[ -n $TMUX ]]
    then
        export TERM=screen-256color
    else
        export TERM=xterm-256color
fi
# colored man
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#jp2a if tty

#if [[ $(echo $TTY|cut -c 6-8) == "tty" ]]; then
#	toilet -f mono12 -F metal -F border "welcome"
#	jp2a  --height=50 ~/img/faces/face4.jpg	
#fi
#
# JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-10-openjdk
export WHALEBREW_INSTALL_PATH=~/.whalebrew/bin
export PATH=$PATH:~/.whalebrew/bin:~/go/bin
