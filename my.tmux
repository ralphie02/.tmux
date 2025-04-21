

# -- my customizations -------------------------------------------------------
#
# in copy mode, copying selection also copies to the OS clipboard
#
tmux_conf_battery_status_charging="🔌"     # U+1F50C
tmux_conf_battery_status_discharging="🔋"  # U+1F50B
my_tmux_conf_status_right=" #{prefix}#{mouse}#{pairing}#{synchronized}#{?battery_status,#{battery_status},}#{?battery_percentage,#{battery_percentage},} , %R %d-%b | #{username}#{root} "
tmux_conf_theme_status_right=" #[fg=yellow]#(cd #{pane_current_path}; echo \"$(basename $(git rev-parse --show-toplevel)) | $(git rev-parse --abbrev-ref HEAD)\")#[fg=default]$my_tmux_conf_status_right"
tmux_conf_copy_to_os_clipboard=true

# this is the place to override or undo settings

# increase history size
set -g history-limit 100000

# start with mouse mode enabled
set -g mouse on

# change prefix
unbind space
unbind C-a
set -g prefix2 C-space
bind C-space send-prefix -2

# session
unbind C-c
bind C-n new-session

# window
unbind c
bind n new-window
