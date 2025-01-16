if (!db.serverStatus().repl.hosts) {
  rs.initiate({ _id: "shard2", members: [
    { _id: 0, host: "shard2-a:27017" },
    { _id: 1, host: "shard2-b:27017" },
    { _id: 2, host: "shard2-c:27017" },
  ]});
} else {
  print("Уже инициализировано");
}
