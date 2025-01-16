#!/usr/bin/env bash
# Проверка распределения между шардами

DIRNAME='/usr/bin/dirname'
READLINK='/bin/readlink'
CURRENT_DIR=$($DIRNAME $($READLINK -e "$0"))

pushd $CURRENT_DIR 2>&1 > /dev/null

# Добавление данных
./addDataToDb.sh

# Просмотр распределения данных
./showDocsStats.sh
