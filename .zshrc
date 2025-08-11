# Set USER
export USER="$(whoami)"

# Add completions path and initialize completion system
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)
autoload -U compinit
compinit

# Enable autosuggestions
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable syntax highlighting (should be sourced last)
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

NEWLINE=$'\n'
PS1="%F{red}%n%f%F{yellow}@%f%F{cyan}%m%f${NEWLINE}%F{blue}%~%f %F{magenta}%#%f "

# Alias definitions
##
### Aliases for common commands
##
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lahF'
alias la='ls -A'
alias grep='grep --color=auto'
alias ..='cd ..'
alias dir='ls'
alias cat='bat -pP'
alias catp='bat -p'
alias clr='clear'
##
### Git shortcuts
##
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gcl='git clone'
alias gpl='git pull'
alias gst='git stash'
alias gsta='git stash apply'

# Variable modifications

export PATH="$HOME/bin:$PATH"

