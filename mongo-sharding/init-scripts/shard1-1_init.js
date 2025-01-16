if (!db.serverStatus().repl.hosts) {
  rs.initiate({ _id: "shard1", members: [{ _id: 0, host: "shard1:27017" }] });
} else {
  print("Уже инициализировано");
}
