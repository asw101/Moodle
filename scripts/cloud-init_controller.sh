#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

git clone -b asw101-dev https://github.com/asw101/Moodle
cd /home/azureadmin/Moodle/scripts/
apt-get update && apt-get install -y moreutils

# install_moodle
bash install_moodle.sh /home/azureadmin/env.json 2>&1 | ts '%Y%m%d-%H:%M:%S' | tee install_moodle.log

