#!/bin/bash

source color.sh

#Test foreground colors
testForegroundColors() {
  echo "Test foreground colors"
  echo "normal ${COLOR_BLACK}black${COLOR_END} normal"
  echo "normal ${COLOR_RED}red${COLOR_END} normal"
  echo "normal ${COLOR_GREEN}green${COLOR_END} normal"
  echo "normal ${COLOR_YELLOW}yellow${COLOR_END} normal"
  echo "normal ${COLOR_BLUE}blue${COLOR_END} normal"
  echo "normal ${COLOR_MAGENTA}magenta${COLOR_END} normal"
  echo "normal ${COLOR_CYAN}cyan${COLOR_END} normal"
  echo "normal ${COLOR_WHITE}white${COLOR_END} normal"
}

#Test background colors
testBackgroundColor() {
  echo "Test background colors"
  echo "normal ${COLOR_BACKGROUND_BLACK}back${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_RED}red${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_GREEN}green${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_YELLOW}yellow${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_BLUE}blue${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_MAGENTA}magenta${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_CYAN}cyan${COLOR_END} normal"
  echo "normal ${COLOR_BACKGROUND_WHITE}white${COLOR_END} normal"
}

testFromHex() {
  if [ $(fromHex 00fc7b) == "048" ]
  then
    echo "Test passed: fromHex"
  else
    echo "Test failed: fromHex"
  fi
}

testForegroundColors
echo
testBackgroundColor
echo
testFromHex
