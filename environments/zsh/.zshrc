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
export FZF_DEFAULT_COMMAND='ag -g ""'

alias ls="ls --color"
alias l="ls -lh"
alias ll="ls -lah"
alias tree="tree -C"

alias gits="git status"

alias svndiff="svn diff | colordiff | less"

sh ~/dotfiles/scripts/base-16.default.dark.mod.sh

bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# fix ctrl + left-right arrow
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
# fix del key
bindkey '\e[3~' delete-char
#fix home/end keys
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

function zle-line-init zle-keymap-select {
  VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
  RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
