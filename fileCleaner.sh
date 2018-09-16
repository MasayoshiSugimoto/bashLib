#!/bin/bash

fileCleaner.listOldFiles() {
  local folder="$1"
  if [[ ! -d "$folder" ]]; then
    echo "[ERROR] folder must be a directory"
    exit 1
  fi
  local filesToKeep=$2
  if [[ ! "$filesToKeep" =~ [0-9]+ ]]; then
    echo "[ERROR] filesToKeep must be a number"
    exit 1
  fi

  local fileNumber=$(ls $folder | wc -l)
  ls -t $folder | tail -n$(( fileNumber - filesToKeep ))
}

fileCleaner.cleanOldFiles() {
  echo "Deleting files..."
  fileCleaner.listOldFiles $@ | tee >(xargs rm)
}
