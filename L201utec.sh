#!/bin/sh

# Define the user name
if [ -z "$USER" ]; then
  echo "Empty user!"
  USER="alex"
else
  echo "Variable define"
fi

# Erase all the files
rm -r /home/$USER/lab_ws
echo "Hola Utec"
cp -f /usr/local/sbin/lab_ws.zip /home/$USER/
sync
unzip /home/$USER/lab_ws.zip -d /home/$USER
rm -r /lab_ws
rm /home/$USER/lab_ws.zip
sudo chmod 777 /home/$USER/lab_ws
sudo chmod 777 /home/$USER/lab_ws/*

# Delete the files from Pictures, Documents, Downloads
rm -r /home/$USER/Pictures/*
rm -r /home/$USER/Documents/*
rm -r /home/$USER/Downloads/*
rm -r /home/$USER/Music/*
rm -r /home/$USER/Videos/*
rm -r /home/$USER/Templates/*
rm -r /home/$USER/Public/*

# Delete the files in home
home_dir=/home/$USER
for entry in "$home_dir"/*
do
  if [ "$entry" = "${home_dir}/Desktop" ] || [ "$entry" = "${home_dir}/Documents" ] || [ "$entry" = "${home_dir}/Downloads" ] || [ "$entry" = "${home_dir}/Music" ] || [ "$entry" = "${home_dir}/Pictures" ] || [ "$entry" = "${home_dir}/Public" ] || [ "$entry" = "${home_dir}/Templates" ] || [ "$entry" = "${home_dir}/Videos" ] || [ "$entry" = "${home_dir}/Examples" ] || [ "$entry" = "${home_dir}/lab_ws" ]; then
    echo "Keep file $entry"
  else
    echo "Detele file $entry"
    rm -r "$entry"
  fi 
done

# Finish deleting all the files
