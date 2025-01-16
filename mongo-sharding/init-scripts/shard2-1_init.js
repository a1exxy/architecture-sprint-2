if (!db.serverStatus().repl.hosts) {
  rs.initiate({ _id: "shard2", members: [{ _id: 1, host: "shard2:27017" }] });
} else {
  print("Уже инициализировано");
}
