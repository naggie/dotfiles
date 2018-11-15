#!/usr/bin/env python3
import sys
try:
 from pyhipku import encode
except ImportError:
 exit(1)
print(encode(sys.argv[1]))