# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"

# Directories
alias dotfiles="cd $DOTFILES"
alias projects="cd $HOME/Projects"
alias icloud="cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/"

# PHP
alias cda="composer dump-autoload -o"

# Docker
alias d="docker"
alias dc="docker-compose"
alias dps="docker ps --format \"{{.ID}}: {{.Image}}\t{{.Status}}\t{{.Ports}}\""
alias di="docker images --format \"{{.ID}}: {{.Repository}}:{{.Tag}}\""

# Laravel
alias a="php artisan"
alias art="php artisan"
alias sail="./vendor/bin/sail"
alias s="./vendor/bin/sail"
alias sa="./vendor/bin/sail artisan"
alias sn="./vendor/bin/sail npm"
alias tinker="php artisan tinker"

# Git
alias nah='git reset --hard;git clean -df'

# Applications
alias vim="nvim"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
