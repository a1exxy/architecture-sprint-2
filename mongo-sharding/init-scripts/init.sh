#!/usr/bin/env bash
# Первичная инициализация кластера MongoDB

DIRNAME='/usr/bin/dirname'
READLINK='/bin/readlink'
CURRENT_DIR=$($DIRNAME $($READLINK -e "$0"))

pushd $CURRENT_DIR 2>&1 > /dev/null

echo "Инициализация configSrv1"
docker compose exec -T configSrv1 mongosh --quiet < configSrv1_init.js
echo -e "\n\n-----------------------------------------------------------------"

echo "Инициализация shard1"
docker compose exec -T shard1 mongosh --quiet < shard1-1_init.js
echo -e "\n\n-----------------------------------------------------------------"

echo "Инициализация shard2"
docker compose exec -T shard2 mongosh --quiet < shard2-1_init.js
echo -e "\n\n-----------------------------------------------------------------"
echo "Инициализация mongos1"
docker compose exec -T mongos1 mongosh --quiet < mongos1_init.js

popd 2>&1 > /dev/null