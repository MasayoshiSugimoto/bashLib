#!/bin/bash

fileCleaner.test() {
  source fileCleaner.sh

  tmpFolder=/tmp/$(whoami)/fileCleaner.$$/
  echo "[fileCleaner] Using temporary folder: $tmpFolder"
  mkdir -p $tmpFolder
  cd $tmpFolder
  for i in {1..9}; do
    touch -t 2018090${i}0000 file.$i
  done

  fileCleaner.cleanOldFiles $tmpFolder 5
}

fileCleaner.test
