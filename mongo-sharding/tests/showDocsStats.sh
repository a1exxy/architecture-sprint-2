#!/usr/bin/env bash
# Подсчет документов в коллекции

HOSTS=("shard1" "shard2")

for HOST in ${HOSTS[@]}; do
    echo "--------------------------------------------------------------"
    echo "Количество документов для: $HOST"
    docker compose exec -T $HOST mongosh mongodb://localhost:27017/somedb --eval 'print("db.helloDoc.countDocuments() = ", db.helloDoc.countDocuments())'
    echo
done
