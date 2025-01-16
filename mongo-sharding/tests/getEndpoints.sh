#!/usr/bin/env bash

# Запросы ручек приложения

curl -s localhost:8080 | jq .
echo -e "\n---------------\n"
curl localhost:8080/helloDoc/count
echo -e "\n---------------\n"
curl -s localhost:8080/helloDoc/users | jq '.users[].id' | wc -l