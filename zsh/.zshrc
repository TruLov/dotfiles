export STARSHIP_CONFIG=$DOTFILES/starship/starship.toml

source $ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/.aliases
source $ZSH/bindings.zsh

eval "$(starship init zsh)"
# eval "$(zellij setup --generate-auto-start zsh)"

# cds completion start

# compinit can be removed here if loaded elsewhere in the script
autoload -Uz compinit && compinit

CDS_PROFILE=$(cds completion --shell zsh --profile 2> /dev/null) || CDS_PROFILE=""
if [ -r "$CDS_PROFILE" ]; then
    . "$CDS_PROFILE"
fi

# cds completion end

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
