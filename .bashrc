#
# ~/.bashrc
#
fortune
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG=en_US.UTF-8

#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;33m\]\u@\h\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] '

#LS_COLORS='di=1;34:fi=00:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=32:*.rpm=90:*.txz=1;31:*.tgz=1;31:*.gz=1;31:*.bz2=1;31:*.bz=1;31:*.zip=1;31:*.rar=1;31:*.xz=1;31:*.jpg=1;35:*.jpeg=1;35:*.JPG=1;35:*.png=1;35:*.xcf=1;94:*.gif=1;94:*.pdf=1;91;4'
#LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.cmd=00;32:*.exe=00;32:*.sh=00;32:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.t=93:*.pm=00;36:*.pod=00;96:*.conf=00;33:*.off=00;9:*.jpg=00;94:*.png=00;94:*.xcf=00;94:*.JPG=00;94:*.gif=00;94:*.pdf=00;91"

alias grep="grep --color=always"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -laF"

##  Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh
