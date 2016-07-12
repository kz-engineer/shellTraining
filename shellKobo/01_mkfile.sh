#!/bin/bash
# 1. Check file existing
# 2. Make file

# Constract definition
readonly WORK_DIR=$(cd $(dirname $0) && pwd)
readonly FILE_NAME='tmp'

cd $WORK_DIR

if [ ! -f $FILE_NAME -a ! -d $FILE_NAME ]; then
  touch $FILE_NAME
  echo "File was made"
else
  echo "File or directory existed"
fi
