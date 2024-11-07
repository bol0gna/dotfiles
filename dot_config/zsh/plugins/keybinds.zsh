# Line editor keybinds

bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

bindkey -M viins "^H" backward-delete-char
bindkey -M viins "^?" backward-delete-char

