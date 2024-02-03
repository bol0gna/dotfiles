export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_STATE_HOME=$HOME/.local/state

export PAGER=less
export EDITOR=vim
export VISUAL=subl
export HISTCONTROL='ignoredups'

# colors
export CLICOLOR=1
export COLORTERM=1
export LSCOLORS=exfxcxdxbxegedabagacad
# export LS_COLORS='di=1;32:ln=1;30;47:so=30;45:pi=30;45:ex=1;31:bd=30;46:cd=30;46:su=30'
# export LS_COLORS="${LS_COLORS};41:sg=30;41:tw=30;41:ow=30;41"

LS_COLORS='bd=38;5;68:ca=38;5;17:cd=38;5;113;1:di=38;5;30:do=38;5;127:ex=38;5;208;1:pi=38;5;126:fi=0:ln=target:mh=38;5;222;1:no=0:or=48;5;196;38;5;232;1:ow=38;5;220;1:sg=48;5;3;38;5;0:su=38;5;220;1;3;100;1:so=38;5;197:st=38;5;86;48;5;234:tw=48;5;235;38;5;139;3:';
export LS_COLORS

# homebrew
if type brew &> /dev/null; then
    PREFIX=/usr/local # $(brew --prefix)
    export HOMEBREW_NO_ANALYTICS=1
    #export HOMEBREW_INSTALL_FROM_API=1
    export PATH="$PATH:/usr/local/sbin"
    # Bash completion
    if [ -r "$PREFIX/etc/profile.d/bash_completion.sh" ]; then
        source "$PREFIX/etc/profile.d/bash_completion.sh"
    fi
fi

# pyenv
if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    export PYENV_VIRTUALENV_VERBOSE_ACTIVATE=1
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi;

# smlnj
if [ -d "/usr/local/smlnj/bin" ]; then
    export PATH=/usr/local/smlnj/bin:"$PATH"
fi;

