#!/bin/bash

sftp -i /home/user/.ssh/id_rsa user@00.00.00.00:/user/Out_folder <<EOF
lcd /data/file/location/In
get *
rm *
exit
EOF
#Logs into the sftp server with user's ssh key. Then downloads everything in the 'out' folder
#to a location on our server (which is mounted on this linux server).

sudo rename 's/zip/pgp/' /data/avoshare/Production/In/*.zip
#We get files back as .zip. We need them to be pgp for to decrypt them.

sudo gpg --batch --decrypt-files /data/file/location/In/*.*
#Decrypt's the recieved file.

sudo rm /data/file/location/In/*.pgp.pgp
#delete the weird frankenstein files before you unzip

sudo unzip '/data/file/location/In/*.*' -d /data/file/location/In/
#unzip contents into folder

sudo rm /data/file/location/In/*.pgp
#clean-up old docs
