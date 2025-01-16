#!/usr/bin/env bash
# Первичная инициализация кластера MongoDB

DIRNAME='/usr/bin/dirname'
READLINK='/bin/readlink'
CURRENT_DIR=$($DIRNAME $($READLINK -e "$0"))

pushd $CURRENT_DIR 2>&1 > /dev/null

echo "Инициализация configSrv1"
docker compose exec -T configSrv1 mongosh --quiet < configSrv1_init.js
echo -e "\n\n-----------------------------------------------------------------"

echo "Инициализация shard1-a"
docker compose exec -T shard1-a mongosh --quiet < shard1_init.js
echo -e "\n\n-----------------------------------------------------------------"

echo "Инициализация shard2-a"
docker compose exec -T shard2-a mongosh --quiet < shard2_init.js
echo -e "\n\n-----------------------------------------------------------------"

echo "Инициализация mongos1"
docker compose exec -T mongos1 mongosh --quiet < mongos1_init.js

popd 2>&1 > /dev/null