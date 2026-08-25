#!/usr/bin/env bash

coords=$(timeout 0.1 /usr/lib/geoclue-2.0/demos/where-am-i | grep -E 'Latitude|Longitude' | awk '{print $2}' | paste -sd, | sed -e 's/°//g')

curl "wttr.in/$coords?format=%c%t"
