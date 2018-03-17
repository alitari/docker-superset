#!/bin/bash
if [ -e /etc/superset-db/superset.db ]
then
    echo "superset.db exists already..ok"
else 
    echo "no superset.db, copy db file..."
    mkdir -p /etc/superset-db
    cp /root/.superset/superset.db /etc/superset-db
fi
superset runserver
