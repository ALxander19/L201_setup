#!/bin/sh

# Erase all the files
rm -r /home/alex/lab_ws
echo "Hola Utec"
cp -f /usr/local/sbin/lab_ws.zip /home/alex/
sync
unzip /home/alex/lab_ws.zip -d /home/alex
rm -r /lab_ws
rm /home/alex/lab_ws.zip
sudo chmod 777 /home/alex/lab_ws

# Delete the files from Pictures, Documents, Downloads
rm /home/alex/Pictures/*
#rm /home/alex/Documents/*
#rm /home/alex/Downloads/*
