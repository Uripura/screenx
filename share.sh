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

xfce4-screenshooter -r -s ~/$name

lftp -c "open -u $user,$pass $rserver; put -O $sdir ~/$name"

rm $name

echo $server$rdir$name | xclip -selection c
