#!/bin/bash
# 1. File exsist check
# 2. Make directory

# Const definition
readonly WORK_DIR=$(cd $(dirname $0) && pwd)
readonly FILE_DIR="${WORK_DIR}/tmp"

cd $WORK_DIR

if [ ! -d $FILE_DIR ]; then
  mkdir -p $FILE_DIR
fi
