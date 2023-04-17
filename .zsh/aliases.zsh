# Open & source .zshrc
alias zenv='vim ~/.zshrc'
alias senv='source ~/.zshrc'

# Git
alias g=git
alias gini='git init'
alias gs='git status'

# Homebrew
alias i='brew install '
alias s='brew search '
alias brest='brew services restart '
alias bresta='brew services restart --all'
alias bsta='brew services start '
alias bsto='brew services stop '
alias blist='brew services list'

# File operations
alias e='vim '
alias -s {md,ts,js,txt,log,java,kt,yml,zsh}=vim
alias o='open '
alias ll='ls -la'

# Copy & paste
alias paste='pbpaste'
alias pwdc='pwd|pbcopy'

# Find process
alias findp='ps -ax | grep'
