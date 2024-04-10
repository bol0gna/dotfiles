# default programs
export PAGER=less
export EDITOR=vim
export VISUAL=subl

# colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export COLORTERM=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# homebrew
if [ -e "/usr/local/bin/brew" ]; then
    export HOMEBREW_NO_ANALYTICS=1
    eval "$(/usr/local/bin/brew shellenv)"
fi

# less
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"
export LESSKEY="$XDG_CONFIG_HOME/lesskey"
export LESS='-M -R --mouse --use-color'

# python
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
# export PYTHONUSERBASE=$XDG_DATA_HOME/python

# pyenv
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
if [ -d "$PYENV_ROOT" ]; then
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    export PYENV_VIRTUALENV_VERBOSE_ACTIVATE=1
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
else
    unset PYENV_ROOT
fi;

# smlnj
if [ -d "/usr/local/smlnj/bin" ]; then
    export PATH=/usr/local/smlnj/bin:"$PATH"
fi;

# ffmpeg
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"

# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# wget
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

