# Load run-help ("man pages" for built-in commands), alias to `help`
# https://wiki.archlinux.org/title/Zsh#Help_command

(( ${+aliases[run-help]} )) && unalias run-help
autoload -Uz run-help
alias help=run-help

autoload -Uz run-help-git run-help-openssl run-help-sudo

