#!/bin/bash
info=$(playerctl -p spotify_player metadata --format '{{ artist }} - {{ title }}' 2>/dev/null)
if [ -n "$info" ]; then
    echo "{\"text\":\"\", \"tooltip\":\"$info\", \"class\":\"playing\"}"
else
    echo "{\"text\":\"\", \"tooltip\":\"Not playing\", \"class\":\"paused\"}"
fi
