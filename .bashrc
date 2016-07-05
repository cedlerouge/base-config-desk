# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# set vi as default editor
export EDITOR=vim

# bash_history size
HISTSIZE=100000

# adding Date And Time To history 
HISTTIMEFORMAT="%h %d %H:%M:%S "

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary, update it.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color)    color_prompt=yes;;
    xterm-256color) color_prompt=yes;;
    xterm)          color_prompt=yes;;
    screen)         color_prompt=yes;;
    rxvt)           color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[1;34m\]\A\[\033[00m\] - ${debian_chroot:+($debian_chroot)}\[\033[00;32m\]\u\[\033[00;33m\]@\h\[\033[00m\]:\[\033[00;37m\]\w\[\033[00m\]\$ '
else
    PS1='\A - $PREPROMPT - ${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

