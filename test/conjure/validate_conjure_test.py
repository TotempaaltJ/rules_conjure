from __future__ import print_function

from sys import argv, exit
from os import path
import json

out_file = argv[1]

assert path.isfile(out_file), "Not found " + out_file

with open(out_file, 'r') as f:
    data = json.load(f)
    assert 'version' in data, "No version field"
    assert 'types' in data, "No types field"
    assert 'services' in data, "No services field"
