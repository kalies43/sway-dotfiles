#!/bin/bash
period=$(date +%p)
time=$(date +%H:%M)
if [ "$period" = "PM" ]; then
    echo "{\"text\":\"$time\", \"class\":\"pm\"}"
else
    echo "{\"text\":\"$time\", \"class\":\"am\"}"
fi
