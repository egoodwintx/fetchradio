#/bin/bash

curl http://www.oldradioworld.com/media/ | grep -oie "\(The%20Shadow\).*\.\(mp3\|wav\|m4a\|ogg\|mp4\)\"" | grep -oie "\(The%20Shadow\).*\.\(mp3\|wav\|m4a\|ogg\|mp4\)" | awk '{print "curl -sOL http://www.oldradioworld.com/media/"$1" &"}' | /bin/sh