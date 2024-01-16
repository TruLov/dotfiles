export DOTFILES=$HOME/.config
export ZSH=$DOTFILES/zsh
export STARSHIP_CONFIG=$DOTFILES/starship/starship.toml

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/node@18/bin:$PATH"

source $ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/.aliases
source $ZSH/bindings.zsh

eval "$(starship init zsh)"