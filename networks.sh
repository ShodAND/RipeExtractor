#!/usr/bin/env bash
/usr/bin/whois -h whois.ripe.net -T route $1 -i origin | egrep "route: " | awk '{print $NF}' 
