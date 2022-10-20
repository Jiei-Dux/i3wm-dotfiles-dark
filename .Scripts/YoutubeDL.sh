#! /usr/bin/env bash

read -p " Enter YT Link: " LINK
yt-dlp -P $HOME/Music/Musix\ Library -x --audio-format mp3 "$LINK"
