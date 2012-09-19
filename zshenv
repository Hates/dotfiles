[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source $HOME/.tmuxinator/scripts/tmuxinator

alias t="rvm 1.9.3@tmux && tmuxinator"

PATH=/usr/local/bin:/usr/local/share/python:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
