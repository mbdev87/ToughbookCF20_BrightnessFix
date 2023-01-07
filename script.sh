#!/bin/bash

sudo apt install inotify-tools -y

chmod +x redirect-brightness
sudo mv redirect-brightness /usr/local/bin/redirect-brightness
sudo mv redirect-brightness.service /etc/systemd/system/redirect-brightness.service

sudo chmod 664 /etc/systemd/system/redirect-brightness.service
sudo systemctl daemon-reload
sudo systemctl enable redirect-brightness.service
sudo systemctl start redirect-brightness.service
