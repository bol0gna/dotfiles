setopt PROMPT_SUBST

local bold=$(tput bold);

local black='%F{0}'
local blue='%F{109}'
local cyan='%F{108}'
local green='%F{142}'
local orange='%F{208}'
local purple='%F{175}'
local red='%F{167}'
local violet='%F{175}'
local white='%F{223}'
local yellow='%F{214}'

if [ "$SSH_TTY"]; then
    hostStyle="${red}";
else
    hostStyle="${yellow}";
fi;

PROMPT="${orange}%n${white}@${hostStyle}%m${white}:${green}%~ ${white}%# %f"
PROMPT2="%_${white}»%f"

