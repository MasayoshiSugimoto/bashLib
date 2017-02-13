#!/bin/bash

source $(dirname $BASH_SOURCE)/color.sh

setBashPrompt() {

  #Get Git status
  local branch=$(git branch 2> /dev/null | grep '*' | cut -d' ' -f2)

  local gitColor=$COLOR_GREEN
  if [ "$(git status --porcelain 2> /dev/null)" != "" ]
  then
    gitColor=$COLOR_RED
  fi

  if [ "$branch" != "" ]
  then
    local gitStatus="\[${gitColor}\]($branch)\[${COLOR_END}\]"
  fi

  #\u -> user id
  #\h -> hostname
  #\w -> working directory
  PS1="\[${COLOR_CYAN}\]\u\[${COLOR_END}\]@\[${COLOR_MAGENTA}\]\h\[${COLOR_END}\]:\[${COLOR_YELLOW}\]\w\[${COLOR_END}\]${gitStatus}\n$ "
}

PROMPT_COMMAND=setBashPrompt

