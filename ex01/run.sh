#!/bin/bash
mkdir -p classes
javac -classpath `hadoop classpath` -d classes WordCount.java
jar -cvf wordcount.jar -C classes/ .
hdfs dfs -mkdir -p /wordinput
hdfs dfs -put -f input/file.txt /wordinput
hadoop jar wordcount.jar WordCount /wordinput /wordoutput
hdfs dfs -cat /wordoutput/part-r-00000
