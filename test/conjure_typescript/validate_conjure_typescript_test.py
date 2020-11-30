from __future__ import print_function

from sys import argv, exit
from os import path

FILES = [
    "api/connection.ts",
    "api/flightSearchService.ts",
    "api/index.ts",
    "api/searchRequest.ts",
    "index.ts",
]
out_dir = argv[1]
paths = [path.join(out_dir, filename) for filename in FILES]

for file in paths:
    assert path.isfile(file), "Not found " + file
