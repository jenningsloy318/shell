
- shell to download youtube videos
```
#!/bin/bash
youtube_playlist=$1
##list all format 
##youtube-dl -F ${youtube_playlist}

## download the playlist 
youtube-dl  -f 22 --retries infinite --proxy http://proxy --no-check-certificate -co '%(playlist_index)s-%(title)s.%(ext)s' ${youtube_playlist}

```
- add config to ` ~/.config/youtube-dl/config` 
```conf
--proxy socks5://192.168.0.1:8080
-f bestvideo+bestaudio
-co ~/Downloads/%(playlist_title)s/%(playlist_index)s-%(title)s.%(ext)s
```

and then excute `youtube-dl ${youtube_playlist}` to download