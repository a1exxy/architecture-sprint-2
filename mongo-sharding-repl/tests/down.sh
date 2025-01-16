#!/usr/bin/env bash

# Запуск проекта

DIRNAME='/usr/bin/dirname'
READLINK='/bin/readlink'
CURRENT_DIR=$($DIRNAME $($READLINK -e "$0"))

pushd $CURRENT_DIR/..

docker-compose down