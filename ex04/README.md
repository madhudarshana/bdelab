# Ex 04 - Query a NoSQL Key-Value Database (MongoDB)

**Aim:** Store 1 lakh records in MongoDB and retrieve them quickly using an index.

**Steps**
1. `mongo_bulk_insert.js` - enables sharding, inserts 100000 student records
2. `mongo_query_test.js` - creates index on `rollno`, queries by rollno, uses projection

**Run**
```
mongosh < mongo_bulk_insert.js
mongosh < mongo_query_test.js
```
Output: see `output.txt` (marks are random, so values will differ).

Note: if you run on a single mongod (no cluster), remove the two `sh.` lines.
