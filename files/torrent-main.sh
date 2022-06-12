#!/bin/bash
tmux -n deluged bash -c "./torrent-maintain-deluged.sh; bash"
tmux -n deluge-web bash -c "nice -n 19 deluge-web; bash"
