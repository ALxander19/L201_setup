#!/bin/sh
cd /home/$USER
git clone https://github.com/ALxander19/L201_setup.git
sudo chmod 777 /home/$USER/L201_setup
sync
sudo cp /home/$USER/L201_setup/lab_ws.zip /usr/local/sbin/
sudo cp /home/$USER/L201_setup/L201utec.sh /usr/local/sbin/
sudo cp /home/$USER/L201_setup/L201utec.service /etc/systemd/system/
sync
rm -r /home/$USER/L201_setup
sync
sudo systemctl enable L201utec.service

# Check status of the systemctl service
# $ systemctl status L201utec.service
