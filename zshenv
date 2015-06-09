alias a='ls -lrthG'
alias capp='cap production deploy'
alias caps='cap staging deploy'
alias ga='git add .'
alias gd='git diff --color=always'
alias gs='git status'
alias gc='git commit -am'
alias gpom='git push origin master'
alias pr='powder restart'
alias t='rvm 2.1@tmux && tmuxinator'
alias u='cd ..'
alias vi='nvim'
alias vim='nvim'

EDITOR='vim'
PATH=/usr/local/bin:$PATH

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin" 

# Add Posgress.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
