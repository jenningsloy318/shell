#!/bin/bash
youtube_playlist=$1
##list all format 
##youtube-dl -F ${youtube_playlist}

## download the playlist 
youtube-dl  -f 22 --retries infinite --proxy http://proxy --no-check-certificate -co '%(playlist_index)s-%(title)s.%(ext)s' ${youtube_playlist}


