#!/bin/bash

cd /home/homeassistant/.homeassistant
source /srv/homeassistant/homeassistant_venv/bin/activate
hass --script check_config

git add .
git status
git commit -m "Updated From HASS Web Interface"
git push origin master

exit
