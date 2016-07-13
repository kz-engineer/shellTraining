#!/bin/bash
# Yes/No Question

# Constant definition
readonly WORK_DIR=$(cd $(dirname $0) && pwd)
readonly FILE_NAME="${WORK_DIR}/script_test"
echo "Are you sure to make a file? [y/n]"
read answer

if [ ${answer} = "y" ]; then
  if [ ! -f ${FILE_NAME} ]; then
    echo "Make ${FILE_NAME}"
    touch ${FILE_NAME}
  else
    echo "File is existed"
  fi
fi
