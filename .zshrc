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
bat --version >/dev/null 2>&1
if [ $? -ne 0 ]; then
    alias bat='batcat'
fi
alias l='ls -lh'
alias ll='ls -lahF'
alias la='ls -A'
alias grep='grep --color=auto'
alias ..='cd ..'
alias dir='ls'
alias cat='bat -pP'
alias catp='bat -p'
alias clr='clear'
alias vim='nvim'

# Variable modifications

export PATH="$HOME/bin:$PATH"
eval "$(zoxide init zsh)"
