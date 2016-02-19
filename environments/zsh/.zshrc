source ~/dotfiles/environments/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen theme agnoster

antigen apply

DEFAULT_USER=victor

export EDITOR=vim

alias l="ls -lah"
alias tree="tree -C"

alias gits="git status"

sh ~/dotfiles/scripts/base-16.default.dark.mod.sh

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
