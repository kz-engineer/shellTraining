#!/bin/bash
# Get argument

# Constant definition
readonly WORK_DIR=$(cd $(dirname $0) && pwd)
readonly ARGS_COUNT=2

if [ $# -ne ${ARGS_COUNT} ]; then
  echo "Args must be ${ARGS_COUNT}"
  exit 1
fi

source_file=$1
target_file=$2

if [ -e ${source_file} -a ! -e ${target_file} ]; then
  echo "move file ${source_file} to ${target_file}"
  mv ${source_file} ${target_file}
else
  echo "Filename is wrong"
fi
