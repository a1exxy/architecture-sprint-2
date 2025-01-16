#!/usr/bin/env bash
# Подсчет документов в коллекции

HOSTS=("shard1-a" "shard1-b" "shard1-c" "shard2-a" "shard2-b" "shard2-c")

for HOST in ${HOSTS[@]}; do
    echo "--------------------------------------------------------------"
    echo "Количество документов для: $HOST"
    docker compose exec -T $HOST mongosh mongodb://localhost:27017/somedb --eval 'print("db.helloDoc.countDocuments() = ", db.helloDoc.countDocuments())'
    echo
done


echo "--------------------------------------------------------------"
echo "Распределение по шардам"
docker exec mongos1 mongosh mongodb://localhost:27017/somedb --eval 'db.helloDoc.getShardDistribution()'
