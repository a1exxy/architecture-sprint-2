sh.addShard("shard1/shard1-a:27017");
sh.addShard("shard2/shard2-a:27017");
sh.enableSharding("somedb");

sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } ) // выбор ключа для шардирования