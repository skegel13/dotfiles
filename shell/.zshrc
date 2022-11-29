# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set path to Dotfiles
export DOTFILES=$HOME/dotfiles

# Path to oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME
# ZSH_THEME="dracula-pro"
# ZSH_THEME="amuse"

plugins=(
    git
)

autoload zcalc

# source $ZSH/oh-my-zsh.sh

# Load additional dotfiles for zsh
for file in $DOTFILES/shell/{aliases,exports,functions}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

for file in ~/dotfiles-custom/shell/.{exports,aliases,functions,zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Path
export PATH="/usr/local/sbin:$PATH"
export PATH="./vendor/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
