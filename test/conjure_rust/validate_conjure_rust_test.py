from __future__ import print_function

from sys import argv, exit
from os import path

FILES = [
    'airport.rs',
    'connection.rs',
    'flight_search_service.rs',
    'mod.rs',
    'search_request.rs',
    'search_result.rs',
]
out_dir = argv[1]
paths = [path.join(out_dir, filename) for filename in FILES]

for file in paths:
    assert path.isfile(file), "Not found " + file
