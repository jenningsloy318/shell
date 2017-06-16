youtube-dl  --retries infinite --proxy http://proxy --no-check-certificate -co '%(playlist_index)s-%(title)s.%(ext)s' ${youtube_playlist}
