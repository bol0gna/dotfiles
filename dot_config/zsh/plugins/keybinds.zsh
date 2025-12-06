# Line editor keybinds

bindkey "\e[A" history-beginning-search-backward # up
bindkey "\e[B" history-beginning-search-forward  # down

bindkey "^[[1;5D" backward-word # ctrl-left
bindkey "^[[1;5C" forward-word  # ctrl-right

bindkey -M vicmd "k" history-beginning-search-backward
bindkey -M vicmd "j" history-beginning-search-forward

bindkey -M viins "^H" backward-delete-char
bindkey -M viins "^?" backward-delete-char

bindkey -M vicmd "?" history-incremental-pattern-search-backward

# keybinds for 'menu select' completion (load before compinit)
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

bindkey '^[[Z' reverse-menu-complete # shift-tab

