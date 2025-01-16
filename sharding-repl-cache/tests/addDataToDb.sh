#!/bin/bash
# Добавление данных в БД

docker compose exec -T mongos1 mongosh --quiet <<EOF
use somedb
for(var i = 0; i < 1000; i++) db.helloDoc.insertOne({age:i, name:"ly"+i})
EOF
