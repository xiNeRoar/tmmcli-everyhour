#!/bin/sh

if [ ! -f /mnt/cron.conf ]; then
#scrap every hour
    echo "0 * * * * /config/tinyMediaManagerCMD.sh -scrapeUnscraped -updateMovies -updateTv -scrapeNew" > /mnt/cron.conf
fi
chmod 777 /config/*
chmod 600 /mnt/cron.conf
crontab /mnt/cron.conf

exec "$@"
