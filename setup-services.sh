#!/bin/bash

#setup services
/etc/init.d/ssh start 1>/dev/null #starting ssh
apachectl start 1>/dev/null  #starting apache web server

file="/etc/pure-ftpd/"
if [ -d $file ]; then
 /etc/init.d/pure-ftpd start 1>/dev/null #stating ftp server
else echo "FTP server not started. You need to install pureftpd first."
fi

file="/var/tmp/tftphome/"
if [ -d $file ]; then
 atftpd --daemon --port 69 $file 1>/dev/null
else mkdir $file | atftpd --daemon --port 69 $file 1>/dev/null
fi

netstat -antup #view connection status