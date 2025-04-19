#!/bin/bash



echo "Starting Global Load Balancer Load Tester"

read -p "Enter the URL of the load balancer: " url
read -p "Enter the number of region changes to observe: " max_changes
rps=10


prev_region=""
count=0
change_count=0

extract_region() {
    echo "$1" | grep -oP 'zones/\K[\w-]+' | head -1 | sed 's/-[a-z]$//'
}

while true; do
    ((count++))
    body=$(curl -s "$url")
    region=$(extract_region "$body")

    if (( count % 20 == 0 )); then
        echo "[$(date +'%T')] Request #$count"
    fi

    if [[ -n "$region" && "$region" != "$prev_region" ]]; then
        echo "Region changed: $prev_region → $region"
        echo "---"
        prev_region="$region"
        ((change_count++))

        if [[ "$change_count" -ge "$max_changes" ]]; then
            echo "Reached desired number of region changes ($max_changes). Exiting."
            exit 0
        fi
    fi

    
done
