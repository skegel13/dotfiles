# Fig pre block. Keep at the top of this file.

# Set path to Dotfiles
export DOTFILES=$HOME/dotfiles

export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
ZSH_THEME="minimal"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

plugins=(git)
autoload zcalc

source $ZSH/oh-my-zsh.sh

# Load additional dotfiles for zsh
for file in $DOTFILES/shell/{aliases,exports,functions}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

prompt_context(){}

# Path
export PATH="/usr/local/sbin:$PATH"
export PATH="./vendor/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_DEFAULT_COMMAND="rg --files --ignore-case"
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}' --height 40% --layout=reverse --border --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"

fpath=($fpath "/Users/sean/.zfunctions")

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZSH Plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"
