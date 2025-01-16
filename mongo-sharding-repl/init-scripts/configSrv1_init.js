if (!db.serverStatus().sharding) {
  rs.initiate({
    _id: "config_server",
    configsvr: true,
    members: [{ _id: 0, host: "configSrv1:27017" }],
  });
} else {
  print("Уже инициализировано");
}
