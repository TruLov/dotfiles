export CFG=$HOME/.cfg
export CONFIG=$HOME/.config
export ZSH=$CONFIG/zsh
export STARSHIP_CONFIG=$CONFIG/starship/starship.toml

source $ZSH/.aliases
source $ZSH/bindings.zsh

eval "$(starship init zsh)"



