# SFTP-Upload-Download
These two scripts are used to upload and download files from an SFTP server. 

Upload.sh pulls files from a local location and encrpyts them using a gpg key. It then connects to an outside SFTP server with an SSH key
to upload the encrypted files in a set location.

Download.sh pulls encrypted files from an outside SFTP server and puts them in a local location. It then decrypts the files and unzips the
contents. 

Both scripts are run on a schedule using cronjobs so the entire process is automated. 

All data has been sanitized. 
