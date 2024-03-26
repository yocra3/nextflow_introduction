#!/bin/bash -ue
for word in Hello world!
do
  echo $word > ${word}.txt
done
