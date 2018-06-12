#!/bin/bash

mkdir s1
# Create Directory s1

mkdir s1/s2
# Create directory s2

mkdir s1/s3
# Create directory s3

mkdir s1/s2/Advanced
# Create directory Advanced

echo "I love bash scripting." > s1/s3/conf.txt
# Create conf.txt and type "I love bash scripting.”

echo "A whole new world."$'\n'"A new fantastic point of view." > ./s1/s2/text_chunk1.txt
# Create text_chunk1.txt and type "A whole new world" in the first line and "A new fantastic point of view" in the second line

cp -a s1/s2/text_chunk1.txt s1/s2/Advanced
# copy existing text_chunk1 to s1/s2/Advanced

mv s1/s2/Advanced/text_chunk1.txt s1/s2/Advanced/text_chunk2.txt
# rename it from text_chunk1.txt to text_chunk2.txt

echo "Do you want to build a snowman?" >> s1/s2/text_chunk2.txt
# add "Do you want to build a snowman?" to text_chunk2.txt
