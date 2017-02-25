#!/bin/bash

source $(dirname $BASH_SOURCE)/color.sh

setBashPrompt() {

  #Get Git status
  local gitBranch=$(git branch 2> /dev/null | grep '*' | cut -d' ' -f2)
  if [ "$gitBranch" != "" ]
  then
    gitBranch="\[${COLOR_GREEN}\]($gitBranch)\[${COLOR_END}\]"
  fi

  #\u -> user id
  #\h -> hostname
  #\w -> working directory
  PS1="\[${COLOR_CYAN}\]\u\[${COLOR_END}\]@\[${COLOR_MAGENTA}\]\h\[${COLOR_END}\]:\[${COLOR_YELLOW}\]\w\[${COLOR_END}\]${gitBranch}\n$ "
}

PROMPT_COMMAND=setBashPrompt

