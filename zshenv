[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source $HOME/.tmuxinator/scripts/tmuxinator

alias a='ls -lrthG'
alias be='bundle exec'
alias ber='bundle exec rake'
alias bes='bundle exec rspec'
alias bi='bundle install'
alias ga='git add .'
alias gd='git diff --color=always'
alias gs='git status'
alias gc='git commit -am'
alias pr='powder restart'
alias retag='/usr/local/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp *'
alias t='rvm 2.0.0@tmux && tmuxinator'
alias u='cd ..'
alias vi='mvim -v'
alias vim='mvim -v'

PATH=$PATH:/usr/local/share/python
PATH=$PATH:/usr/local/bin
