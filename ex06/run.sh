#!/bin/bash
hdfs dfs -mkdir -p /pigproject
hdfs dfs -put -f students.txt /pigproject
pig -x mapreduce pig_filter_script.pig
