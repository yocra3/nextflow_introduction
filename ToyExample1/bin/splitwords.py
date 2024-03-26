#!/usr/bin/env python
import sys

x = sys.argv[1:]
for i, word in enumerate(x):
    with open(f"{word}.txt", "w") as f:
         f.write(word)