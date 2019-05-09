##  Aliases
#############
if [ -f ~/.zsh_aliases ]; then
 . ~/.zsh_aliases
fi

## programs
fortune
#neofetch

##  Sources
#############
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source $HOME/.zsh_powerline


##  History
#############
## Enable history
if [ -z "$HISTFILE" ]; then
 HISTFILE=$HOME/.zsh_history
fi


## Variables
PATH="/usr/local/bin:/usr/local/sbin/:$PATH"
HISTSIZE=1000
SAVEHIST=1000
HOSTNAME="`hostname`"
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';

## Set prompts
NEWLINE=$'\n'
#PROMPT='%B%n@%m# '

### zatvorky
#PROMPT="%F{blue}[%B%F{yellow}%n%f@%B%F{yellow}%m%f%b%F{blue}]%F{white}:%F{blue}%B%1~%B%f$ "

PROMPT="%B%F{yellow}%n%f@%B%F{yellow}%m%F{white}:%F{blue}%B%1~%B%f$ "
#PROMPT="%F{blue}┌─[%B%F{yellow}%n%f@%B%F{yellow}%m%f%b%F{blue}]%F{white}:%F{blue}%B%1~%B%f$ ${NEWLINE}%b%F{blue}└────■ %B%F{blue}▶▶ "
#PROMPT='%B%h>%b'
#RPROMPT='[%F{yellow}%?%f]'
RPS1="%B%F{white}%T %w"

## Show history
case $HIST_STAMPS in
 "mm/dd/yyyy") alias history='fc -fl 1' ;;
 "dd.mm.yyyy") alias history='fc -El 1' ;;
 "yyyy-mm-dd") alias history='fc -il 1' ;;
 *) alias history='fc -l 1' ;;
esac


##  SHELL Options
###################
setopt notify globdots correct pushdtohome cdablevars autolist
setopt correctall autocd recexact longlistjobs
setopt autoresume histignoredups pushdsilent 
setopt autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash


##  ZSH options
#################
#setopt NOHUP
#setopt NOTIFY
#setopt NO_FLOW_CONTROL
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
#setopt AUTO_LIST
#setopt AUTO_REMOVE_SLASH
#setopt AUTO_RESUME
unsetopt BG_NICE
setopt CORRECT
setopt EXTENDED_HISTORY
#setopt HASH_CMDS
setopt MENUCOMPLETE
setopt ALL_EXPORT
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt ALIASES


##  Autoload ZSH modules
##########################
autoload -U history-search-end
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
#zmodload -ap zsh/mapfile mapfile
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end


##  Key bindings
##################
autoload -U compinit
compinit
bindkey "^?" backward-delete-char
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "^[[H"   beginning-of-line
bindkey "^[[F"   end-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[6~' down-line-or-history
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
bindkey "^r" history-incremental-search-backward
bindkey ' ' magic-space # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
typeset -A key
key[Delete]=${terminfo[kdch1]}
[[ -n "${key[Delete]}" ]] && bindkey "${key[Delete]}" delete-char


##  ZSH Highlight
###################
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='fg=bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
ZSH_HIGHLIGHT_STYLES[function]='fg=green'
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=cyan,bold'
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf' 'fg=magenta,bold')
ZSH_HIGHLIGHT_PATTERNS+=('rmf' 'fg=magenta,bold')
ZSH_HIGHLIGHT_PATTERNS+=('sudo sh' 'fg=magenta,bold')

##  Powerline
# if [[ -r /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#   source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
# fi
