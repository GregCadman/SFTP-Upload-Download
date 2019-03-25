#!/bin/bash

sudo gpg --multifile --encrypt -r pgp@company.com /data/file/location/Out/*.csv
#encrypts .csv files with company's gpg key

sftp -i /home/user/.ssh/id_rsa user@00.00.00.00:/user/In_Folder <<EOF
put /data/file/location/Out/*.gpg
exit
EOF
#Connects to the sftp server, uploads the encrypted files. Leaves.

sudo rm /data/file/location/Out/*
#Clean up the out folder
