export STARSHIP_CONFIG=$DOTFILES/starship/starship.toml

source $ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/.aliases
source $ZSH/bindings.zsh

eval "$(starship init zsh)"
# eval "$(zellij setup --generate-auto-start zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
