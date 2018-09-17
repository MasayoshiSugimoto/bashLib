#!/bin/bash

fileCleaner.test() {
  source ../fileCleaner.sh
	source assert.test.sh

  tmpFolder=/tmp/$(whoami)/fileCleaner.$$/
  echo "[fileCleaner] Using temporary folder: $tmpFolder"
  mkdir -p $tmpFolder
  cd $tmpFolder
  for i in {1..9}; do
    touch -t 2018090${i}0000 file.$i
  done

  fileCleaner.cleanOldFiles $tmpFolder 5

	[[ $(ls $tmpFolder | wc -l) -ne 5 ]] && test.fail $LINENO
	[[ ! "$(ls $tmpFolder)" =~ file.5.file.6.file.7.file.8.file.9 ]]\
		&& test.fail $LINENO
}

fileCleaner.test
