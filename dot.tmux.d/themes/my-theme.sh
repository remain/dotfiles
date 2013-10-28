if patched_font_in_use; then
  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
else
  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'236'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}


# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
  TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
    "hostname 148 22" \
    "lan_ip 4 0" \
    "ruby_version 2 0" \
    "vcs_branch 29 253" \
    "vcs_compare 60 255" \
    "vcs_staged 64 255" \
    "vcs_modified 9 255" \
    "vcs_others 245 0" \
  )
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
  TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
    "pwd 89 211" \
    "weather 37 255" \
    "memory 240 250" \
    "load 252 236" \
  )
fi