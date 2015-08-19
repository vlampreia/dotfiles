source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen theme agnoster

antigen apply

DEFAULT_USER=victor

alias l="ls -lah"
alias tree="tree -C"

sh ~/dotfiles/scripts/base-16.default.dark.mod.sh
