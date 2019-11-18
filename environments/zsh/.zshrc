# source ~/dotfiles/environments/zsh/antigen/antigen.zsh

# antigen use oh-my-zsh

# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
# 
# antigen theme agnoster
# 
# antigen apply

DEFAULT_USER=victor

export EDITOR=vim
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'
export LESS='-XFSR'

alias ls="ls --color"
alias l="ls -lh"
alias ll="ls -lah"
alias tree="tree -C"

alias gits="git status"

alias svndiff="svn diff | colordiff | less"

alias less="less -S"

sh ~/dotfiles/scripts/base-16.default.dark.mod.sh

export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

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

. /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSHOWUPSTREAM=true

setopt PROMPT_SUBST
function prompt {
    echo "$(whoami):$(dirs)$(__git_ps1)"
}

export PS1='%0{$(tput sgr0)$(tput bold)$(tput setaf 3)%}> $(prompt) \$ %0{$(tput sgr0)%}'

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

eval $(ssh-agent) > /dev/null

export HISTFILE=~/.zsh_history
export SAVEHIST=9999
export HISTSIZE=9999

# zstyle ':completion:*' matcher-list 'm:[a-z]=[A-Z]'
autoload -Uz compinit
compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/nvm/init-nvm.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/victor/google-cloud-sdk/path.zsh.inc' ]; then . '/home/victor/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/victor/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/victor/google-cloud-sdk/completion.zsh.inc'; fi

alias gblog='gcloud builds log --stream $(gcloud builds list --uri --limit 1 --filter="sourceProvenance.resolvedRepoSource.commitSha=$(git rev-parse HEAD | tr -d '\n')")'
