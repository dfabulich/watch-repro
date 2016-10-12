#!/bin/sh
mkdir -p data
DATE=`date`
for I in {1..100000}; do
	echo $I $DATE > data/$I.txt
done
bazel build :x & rm -rf data