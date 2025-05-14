# Created by newuser for 5.9
autoload -Uz compinit promptinit
compinit
promptinit

HISTFILE="${HOME}/.config/.histfile"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY

# YES
export MANPAGER='nvim +Man!'

# This will set the default prompt to the walters theme
prompt walters

# MANDATORY
setxkbmap -option caps:swapescape

# Only way to fly
eval "$(zoxide init zsh)"

# Beutiful prompt
eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Vim Ultimate Power
bindkey -v

alias ls='eza'
alias ll='eza -l'
alias lla='eza -la'
alias la='eza -a'
alias grep='grep --color=auto'

alias cr='cargo run'
alias ct='cargo test'

alias k='kubectl'
alias ff='fastfetch'
alias nv='nvim'
