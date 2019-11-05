#!/bin/bash

sed "s/MPD_ICE_PASSWORD/$MPD_ICE_PASSWORD/g" /etc/mpd.conf.template | \
    sed "s/MPD_ADMIN_PASSWORD/$MPD_ADMIN_PASSWORD/g" > /etc/mpd.conf

mkdir -p /var/mpd/playlists
touch /var/mpd/playlists/Favorites.m3u
touch /var/mpd/mpdstate

chown -R mpd /var/mpd/
sudo -u mpd /usr/bin/mpd --no-daemon --stdout /etc/mpd.conf

