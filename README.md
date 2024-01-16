# dotfiles

```bash
# Prerequisites for Git and Homebrew
xcode-select --install

# clone this repo
git clone https://github.com/TruLov/dotfiles.git ~/.config

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## git

```bash
# brew install git
ln -s ~/.config/git/.gitconfig ~/.gitconfig
```

## zsh

```bash
# brew install zsh
ln -s ~/.config/zsh/.zshenv ~/.zshenv
ln -s ~/.config/zsh/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.config/zsh/fast-syntax-highlighting
# git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.config/zsh/zsh-autocomplete
# git clone https://github.com/zsh-users/zsh-history-substring-search ~/.config/zsh/zsh-history-substring-search
```

## wezterm

```bash
brew install --cask wezterm
ln -s ~/.config/wezterm/.wezterm.lua ~/.wezterm.lua
```

## nvim

[typecraft - Neovim for Newbs](<https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&pp=iAQB>)

## Fonts

```bash
brew tap homebrew/cask-fonts
brew search font- | grep fira
brew install --cask font-fira-code-nerd-font
brew install --cask font-symbols-only-nerd-font
```
