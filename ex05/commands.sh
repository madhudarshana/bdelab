#!/bin/bash
hdfs namenode -format
start-dfs.sh
start-yarn.sh
jps
