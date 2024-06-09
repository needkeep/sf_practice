#!/bin/bash 

sudo apt update && sudo apt install -y python3-pip  && \
sudo python3 -m pip install --upgrade pip && \
sudo pip3 install -r /tmp/requirements.txt 