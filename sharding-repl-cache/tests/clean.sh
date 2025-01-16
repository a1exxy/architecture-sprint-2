#!/usr/bin/env bash

# Удаление вольюмов

DIRNAME='/usr/bin/dirname'
READLINK='/bin/readlink'
CURRENT_DIR=$($DIRNAME $($READLINK -e "$0"))

pushd $CURRENT_DIR/..

docker-compose down -v