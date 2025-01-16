# Спринт 2

##  Запуск
```bash
    # Перейти в папку sharding-repl-cache
    cd sharding-repl-cache
    # Запустить копмпос
    docker-compose up -d
```

## Инициализация БД
```bash
    ./init-scripts/init.sh
```

## Запуск теста (Добавление 1000 записей и просмотр распределения между шардами)
```bash
    ./tests/test.sh
```

## Схема 
Итоговая [result.drawio](https://github.com/a1exxy/architecture-sprint-2/blob/main/result.drawio) схема содержит:
- Шардирование
- Репликацию
- Кэширование
- ApiGateway
- Service Mesh
- CDN