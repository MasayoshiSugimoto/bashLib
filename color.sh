#!/bin/bash

readonly COLOR_BLACK=$(tput setaf 0)
readonly COLOR_RED=$(tput setaf 1)
readonly COLOR_GREEN=$(tput setaf 2)
readonly COLOR_YELLOW=$(tput setaf 3)
readonly COLOR_BLUE=$(tput setaf 4)
readonly COLOR_MAGENTA=$(tput setaf 5)
readonly COLOR_CYAN=$(tput setaf 6)
readonly COLOR_WHITE=$(tput setaf 7)
readonly COLOR_END=$(tput sgr0)

readonly COLOR_BACKGROUND_BLACK=$(tput setab 0)
readonly COLOR_BACKGROUND_RED=$(tput setab 1)
readonly COLOR_BACKGROUND_GREEN=$(tput setab 2)
readonly COLOR_BACKGROUND_YELLOW=$(tput setab 3)
readonly COLOR_BACKGROUND_BLUE=$(tput setab 4)
readonly COLOR_BACKGROUND_MAGENTA=$(tput setab 5)
readonly COLOR_BACKGROUND_CYAN=$(tput setab 6)
readonly COLOR_BACKGROUND_WHITE=$(tput setab 7)

fromHex(){
  hex=${1#"#"}
  r=$(printf '0x%0.2s' "$hex")
  g=$(printf '0x%0.2s' ${hex#??})
  b=$(printf '0x%0.2s' ${hex#????})
  printf '%03d' "$(( (r<75?0:(r-35)/40)*6*6 + 
    (g<75?0:(g-35)/40)*6   +
    (b<75?0:(b-35)/40)     + 16 ))"
}
