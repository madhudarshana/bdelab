#!/bin/bash
mkdir -p classes
javac -classpath `hadoop classpath` -d classes WeatherAnalysis.java
jar -cvf weatheranalysis.jar -C classes/ .
hdfs dfs -mkdir -p /weatherinput
hdfs dfs -put -f input/weather.txt /weatherinput
hadoop jar weatheranalysis.jar WeatherAnalysis /weatherinput /weatheroutput
hdfs dfs -cat /weatheroutput/part-r-00000
