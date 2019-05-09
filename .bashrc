#
# ~/.bashrc
#

fortune
#neofetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG=en_US.UTF-8
#export GDK_NATIVE_WINDOWS=0
#export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "

#PS1='[\u@\h \W]\$ '

## Datum + cas
#PS1='\[\e[1;33m\]\D{%d.%m.%Y - %T}\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] '

PS1='\[\e[0;33m\]┌─[\[\e[1;31m\]\D{%d.%m.%Y}\[\e[0;33m\]]-[\[\e[1;31m\]\D{%T}\[\e[0;33m\]]\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\n\[\e[0;33m\]└────■\[\e[00;00m\] '

## username - hostname (default)
#PS1='\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;33m\]\h\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] '

## time - username - hostname
#PS1="\[\e[0;34m\][\[\e[1;37m\]\$(date +%H:%M:%S)\[\e[0;34m\]][\[\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;33m\]\h\[\[\e[0;34m\]]\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] "

#PS1="\[\e[1;31m\]\$(date +%H:%M:%S)\] - \$(date +%d.%m.%Y)\]\e[0m\]\[\e[1;32m\]:\e[1;34m\]\w\[\e[0m\]\n\e[1;33m\]\u\[\e[0m\]@\e[1;33m\]\H\e[1;34m\]:\e[1;37m\]$\[\e[1;0m\] "

## time - username - hostname - bez zatvoriek ###
#PS1="\[\e[1;33m\]\$(date +%H:%M:%S)\[\e[1;34m\] - \[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;33m\]\h\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] "

## username - hostname - second command line
#PS1="\[\e[0;33m\]┌──[\[\e[1;33m\u\e[0;33m\]\e[1;32m\]@\[\e[1;33m\]${HOSTNAME%%.*}\[\e[0;33m\]]\[\e[1;37m\]:\e[1;34m\]\w\e[1;37m\]$\[\e[0;33m\]\n\[\e[0;33m\]└────■ \[\e[0;36m\]▶▶ \[\e[00;00m\]"

## time - username - hostname - second command line
#PS1="\[\e[0;33m\]┌─[\e[1;37m\[\$(date +%H:%M:%S)\]\[\e[0;33m\]]──[\[\e[1;33m\u\e[0;33m\]\e[1;32m\]@\[\e[1;33m\]${HOSTNAME%%.*}\[\e[0;33m\]]\[\e[1;37m\]:\e[1;34m\]\w\e[1;37m\]$\[\e[0;33m\]\n\[\e[0;33m\]└────■ \[\e[0;36m\]▶▶ \[\e[00;00m\]"

## time - username - hostname - second command line + smile
#PS1="\[\e[0;33m\]┌─ $(if [[ $? == 0 ]]; then echo '\[\e[1;5m\]:)\[\e[0;34m\]'; else echo '\[\e[1;31m\]:(\[\e[0;34m\]'; fi) \[\e[0;33m\][\[\e[1;37m\]\$(date +%H:%M:%S)\[\e[0;33m\]]──[\[\e[1;33m\u\]\e[1;32m\]@\[\e[1;33m\]${HOSTNAME%%.*}\[\e[0;33m\]]\[\e[1;37m\]: \[\e[1;34m\w \[\e[1;37m\]$\[\e[0;33m\]\n\[\e[0;33m\]└────■ \[\e[1;36m\]▶▶  \[\e[00;00m\]"

#LS_COLORS='di=1;34:fi=00:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=32:*.rpm=90:*.txz=1;31:*.tgz=1;31:*.gz=1;31:*.bz2=1;31:*.bz=1;31:*.zip=1;31:*.rar=1;31:*.xz=1;31:*.jpg=1;35:*.jpeg=1;35:*.JPG=1;35:*.png=1;35:*.xcf=1;94:*.gif=1;94:*.pdf=1;91;4'
#LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.cmd=00;32:*.exe=00;32:*.sh=00;32:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.t=93:*.pm=00;36:*.pod=00;96:*.conf=00;33:*.off=00;9:*.jpg=00;94:*.png=00;94:*.xcf=00;94:*.JPG=00;94:*.gif=00;94:*.pdf=00;91"

alias grep="grep --color=always"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -laF"
alias pocasie="curl sk.wttr.in/48.16,17.11"
alias neomutt="env TERM=rxvt-256color neomutt"
alias last-installed="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 30"
#alias hc='herbstclient'

##  Powerline
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh
