#!/bin/bash

sudo apt install bc

rps=10
url="<LB_FRONTEND>"
interval=$(echo "scale=3; 1/$rps" | bc 2>/dev/null)

if [[ -z "$interval" ]]; then
    echo "Warning: Failed to calculate interval. Falling back to 1 second."
    interval=1
fi

prev_region=""
count=0

extract_region() {
    echo "$1" | grep -oP 'zones/\K[\w-]+' | head -1 | sed 's/-[a-z]$//'
}

while true; do
    ((count++))
    body=$(curl -s "$url")
    region=$(extract_region "$body")

    echo "[$(date +'%T')] Request #$count"

    if [[ -n "$region" && "$region" != "$prev_region" ]]; then
        echo "Region changed: $prev_region → $region"
        echo "$body"
        echo "---"
        prev_region="$region"
    fi

    sleep "$interval"
done