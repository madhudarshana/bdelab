# Ex 03 - Sharding and Replication using MongoDB

**Aim:** Understand replication (replica set) and sharding in MongoDB.

**Replication:** 3 mongod instances (ports 27017-27019) form replica set `rs0` -> 1 PRIMARY + 2 SECONDARY. Data written to primary is copied to secondaries. If primary goes down, a new one is elected automatically.

**Sharding:** Data is split across shards (ports 27020, 27021) using shard key `rollno`. `mongos` is the router, config server stores metadata.

**Run**
```
bash start_replica.sh      # replication
bash start_shard.sh        # sharding (run separately, stop replica set first - both use port 27017)
mongo < mongo_insert_test.js
```
Output: see `output.txt`.

Note: newer MongoDB versions use `mongosh` instead of `mongo`.
