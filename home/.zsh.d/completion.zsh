autoload -Uz compinit && compinit

setopt auto_menu
setopt menu_complete

setopt complete_in_word
setopt always_to_end
setopt always_last_prompt

setopt glob_complete
setopt glob_dots
setopt no_nomatch
setopt magic_equal_subst

zstyle ':completion:*:default' menu select=2
bindkey "\e[Z" reverse-menu-complete

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} r:|[._-]=*'