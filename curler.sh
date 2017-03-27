#!/bin/bash
SLEEPTIME=${SLEEPTIME:-1}
URL=${URL:-example.com}

while sleep $SLEEPTIME; do
    echo -n "[$(gdate -Iseconds)] <$URL> "
    curl -k -L --output /dev/null --silent --show-error --write-out 'lookup=%{time_namelookup} connect=%{time_connect} appconnect=%{time_appconnect} pretransfer=%{time_pretransfer} redirect=%{time_redirect} starttransfer=%{time_starttransfer} total=%{time_total}\n' "$URL"
done
