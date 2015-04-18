# Based on the tmux.conf from PragPro's Tmux book.

# Setting the prefix from C-b to C-a
set -g prefix C-a
unbind C-b

#setting the delay between prefix and command
set -sg escape-time 1

# Ensure that we can send Ctrl-A to other apps
bind C-a send-prefix

# Set the base index for windows to 1 instead of 0
set -g base-index 1

# Set the base index for panes to 1 instead of 0
setw -g pane-base-index 1

# Reload the file with Prefix r
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# splitting panes
bind | split-window -h
bind - split-window -v

# Moving between panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -n C-Left select-pane -L
bind -n C-Down select-pane -D
bind -n C-Up select-pane -U
bind -n C-Right select-pane -R

# Pane resizing
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# mouse support - set to on if you want to use the mouse
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on

# Set the default terminal mode to 256color mode
set -g default-terminal "screen-256color"

# this will renumber windows automatically when one gets deleted
set-option -g renumber-windows on

# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on

# enable vi keys.
setw -g mode-keys vi

# Enable pbcopy/pbpaste
set-option -g default-command "reattach-to-user-namespace -l zsh"
#bind-key C-c run-shell "tmux save-buffer - | reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

# Powerline styled status bar
set -g status-left-length 52
set -g status-right-length 451
set -g status-fg white
set -g status-bg colour234
set -g window-status-activity-attr bold
set -g pane-border-fg colour245
set -g pane-active-border-fg colour39
set -g message-fg colour16
set -g message-bg colour221
set -g message-attr bold
set -g status-left '#[fg=colour235,bg=colour252,bold] ❐ #S #[fg=colour252,bg=colour238,nobold]⮀#[fg=colour245,bg=colour238,bold] #(whoami) #[fg=colour238,bg=colour234,nobold]⮀'
set -g window-status-format "#[fg=white,bg=colour234] #I #W "
set -g window-status-current-format "#[fg=colour234,bg=colour39]⮀#[fg=colour25,bg=colour39,noreverse,bold] #I ⮁ #W #[fg=colour39,bg=colour234,nobold]⮀"
