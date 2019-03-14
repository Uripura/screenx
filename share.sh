#!/bin/bash

# Remote server name without protocol
rserver="example.com"

# Remote server with protocol
server="https://$rserver"

# FTP user
user=ftpuser

# FTP pass
pass=ftppass

# Server dir, must be complete path on the server
sdir="/var/www/dir/to/img/folder"

# Remote dir, the path for the browser
rdir="/dir/to/img/folder/"

# Generate filename
name="$(date +'%Y-%m-%d_%H-%M')_$((1000 + RANDOM % 9000)).png"

# Region
case "$1" in
	1)
	xfce4-screenshooter -r -s ~/$name
	;;

# Active Window
	2)
	xfce4-screenshooter -w -s ~/$name
	;;

# Entire Screen
	3)
	xfce4-screenshooter -f -s ~/$name
	;;
# Default: only region
	*)
	xfce4-screenshooter -r -s ~/$name
esac

#lftp -c "open -u $user,$pass $rserver; put -O $sdir ~/$name"

echo $server$rdir$name | xclip -selection c
