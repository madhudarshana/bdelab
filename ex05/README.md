# Ex 05 - Install, Configure and Run Hadoop & HDFS (Pseudo-Distributed Mode)

**Aim:** Run all Hadoop daemons on a single machine.

**Steps**
1. Install Java (JDK 8+)
2. Download and extract Hadoop from hadoop.apache.org
3. Set `HADOOP_HOME`, `JAVA_HOME`, update `PATH` in `~/.bashrc`
4. Copy the 4 XML files in `config/` to `$HADOOP_HOME/etc/hadoop/`
5. Format namenode, start services, verify with `jps` (see `commands.sh`)

**Config files:** `core-site.xml` (default FS), `hdfs-site.xml` (replication = 1), `mapred-site.xml` (framework = yarn), `yarn-site.xml` (shuffle service)

**Output:** see `output.txt` (process IDs will differ).

Note: change `/home/user/` in `hdfs-site.xml` to your own home path.
