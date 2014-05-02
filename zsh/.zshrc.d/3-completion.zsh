# Set up completion system 
zstyle :compinstall filename ~/.zshrc
autoload -Uz compinit
compinit

# Case-insensitive auto-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
