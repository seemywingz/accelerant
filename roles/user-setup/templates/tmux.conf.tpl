###############################################
## File: ~/.tmux.conf                        ##
## Updated: 2015030301                       ##
## Auth: Dan Stone (dafstone >at< gmail.com) ##
###############################################

#----------------------------
# OPTIONS
#

unbind C-b
set-option -g prefix C-a
bind a send-prefix

set -s escape-time 1                              

setw -g mode-keys vi
setw -g mode-mouse on
setw -g monitor-activity on
setw -g automatic-rename on

#----------------------------
# UNBINDS
#

unbind c
unbind i
unbind l
unbind s
unbind w
unbind %
unbind '"'
unbind [
unbind ]
unbind C-o
unbind tab

#----------------------------
#  BINDS
#

# re-read conf file
bind r source-file ~/.tmux.conf \; display "Reloaded Tmux Configuration"

# copy mode
bind Escape copy-mode
bind p paste-buffer

# window management
bind n new-window -c ~/.
bind tab next-window
bind m choose-window

# bind a choose-session
bind t set status
bind -n ^F1 select-window -t 1
bind -n ^F2 select-window -t 2
bind -n ^F3 select-window -t 3
bind -n ^F4 select-window -t 4
bind -n ^F5 select-window -t 5
bind -n ^F6 select-window -t 6
bind -n ^F7 select-window -t 7
bind -n ^F8 select-window -t 8
bind -n ^F9 select-window -t 9
bind -n ^F10 select-window -t 10
bind -n ^F11 select-window -t 11
bind -n ^F12 select-window -t 12

# pane management
bind c kill-pane
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

bind F1 select-pane -t 1
bind F2 select-pane -t 2
bind F3 select-pane -t 3
bind F4 select-pane -t 4
bind F5 select-pane -t 5
bind F6 select-pane -t 6
bind F7 select-pane -t 7
bind F8 select-pane -t 8
bind F9 select-pane -t 9
bind F10 select-pane -t 10
bind F11 select-pane -t 11

# resize with arrow keys
bind up resize-pane -U 15
bind down resize-pane -D 15
bind left resize-pane -L 15
bind right resize-pane -R 15

# vim bindings
bind h select-pane -L 
bind l select-pane -R
bind j select-pane -D
bind k select-pane -U
bind space next-layout

# other bindings
bind / command-prompt -p "man page: " "split-window 'exec man %%'"
bind v command-prompt -p "vim: " "split-window 'exec vim %%'"
bind s command-prompt -p "ssh: " "new-window -n %1 'ssh %1'"


#----------------------------
#  WINDOW/PANE OPTIONS
#

# start counting at 1 panes too
set -g base-index 1
setw -g pane-base-index 1

# mouse options
set -g mouse-select-pane on
set -g mouse-select-window on
set -g mouse-resize-pane on

# colors
set -g pane-border-fg black
set -g pane-active-border-fg red
set -g display-panes-colour white
set -g display-panes-active-colour red
set -g display-panes-time 4000
 
# Start Solorized -- default statusbar colors
set-option -g status-bg black #base02
set-option -g status-fg yellow #yellow
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg brightblue #base0
set-window-option -g window-status-bg default

# active window title colors
set-window-option -g window-status-current-fg brightred #orange
set-window-option -g window-status-current-bg default

# pane border
set-option -g pane-border-fg black #base02
set-option -g pane-active-border-fg brightgreen #base01

# message text
set-option -g message-bg black #base02
set-option -g message-fg brightred #orange

# pane number display
set-option -g display-panes-active-colour blue #blue
set-option -g display-panes-colour brightred #orange

# clock
set-window-option -g clock-mode-colour green #green

setw -g automatic-rename on
setw -g monitor-activity on
setw -g utf8 on

setw -g aggressive-resize on

set -g history-limit 50000

set-option -g default-terminal "screen-256color"

