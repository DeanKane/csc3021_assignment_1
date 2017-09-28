#!/bin/bash

ext=$(echo "$1" | tr '[:upper:]' '[:lower:]')

rm $1_output.txt
touch $1_output.txt
javac PageRankSkeleton.java
java -ea PageRank $1 rMatGraph_J_5_100.$ext $1_output.txt  
