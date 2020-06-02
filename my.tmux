

# -- my customizations -------------------------------------------------------
#
# in copy mode, copying selection also copies to the OS clipboard
tmux_conf_copy_to_os_clipboard=true

# this is the place to override or undo settings

# increase history size
set -g history-limit 100000

# start with mouse mode enabled
set -g mouse on

# change prefix
unbind C-a
set -g prefix2 C-space
bind C-space send-prefix -2
unbind space

# session
unbind C-c
bind C-n new-session

# window
unbind c
bind n new-window
