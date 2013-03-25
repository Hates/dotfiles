[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source $HOME/.tmuxinator/scripts/tmuxinator

alias t="rvm 1.9.3@tmux && tmuxinator"
alias be="bundle exec"
alias gtags="/usr/local/bin/ctags -R --exclude=.git --exclude=log *"

PATH=$PATH:/Users/rhart/Work/Misc/Play/play-2.0.4
PATH=$PATH:/usr/local/share/python
PATH=$PATH:/usr/local/bin
