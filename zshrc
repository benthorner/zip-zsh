################################################################
## Git
################################################################

alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gl='git log --oneline --graph'
alias gst='git status -sb'
alias gp='git push'
alias gpl='git pull'
alias grc='git rebase --continue'
alias gs='git stash'
alias gsp='git stash pop'

################################################################
## Docker
################################################################

function __docker_clean_all {
  docker rm $(docker ps -q -f status=exited) 2> /dev/null
  docker volume rm $(docker volume ls -q -f dangling=true) 2> /dev/null
  docker rmi $(docker images -q -f dangling=true) 2> /dev/null
}

alias dca=__docker_clean_all

################################################################
## Prompt
################################################################

function __dir_prompt {
  echo "%B%F{magenta}%1~%f%b"
}

function __git_prompt {
  echo "%B%F{blue}${vcs_info_msg_0_}%f%b"
}

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git*' formats "%b"

setopt prompt_subst
export PS2="-> "
export PS1='$(__dir_prompt)%#$(__git_prompt) '

################################################################
## Vim
################################################################

export EDITOR=vim

################################################################
## History
################################################################

setopt inc_append_history
setopt share_history

HISTFILE=${HOME}/.zsh_history
HISTSIZE=99999
SAVEHIST=99999
