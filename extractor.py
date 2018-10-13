#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from settings import ASN
import subprocess
import json

proces = subprocess.check_output([
    './networks.sh', ASN], universal_newlines=True)
procesResult = proces.splitlines()

with open('./data/prefixes.json', 'w') as outfile:
    json.dump([{"network": prefix} for prefix in procesResult], outfile)
