#!/bin/bash
# Change permission

# Constant definition
readonly WORK_DIR=$(cd $(dirname $0) && pwd)

for fileName in "$@"; do
  if [ ! -e ${fileName} ]; then
    echo "${fileName} is nothing"
    continue
  fi
  echo "befor: `ls -la ${fileName}`"
  if [ -w ${fileName} ]; then
      echo "Remove write permission from ${fileName}"
      chmod u-w ${fileName}
  else
      echo "Add write permission to ${fileName}"
      chmod u+w ${fileName}
  fi
  echo "after: `ls -la ${fileName}`"
done
