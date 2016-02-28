#!/bin/sh

set -e
set -x

export LANG=en_US.UTF-8

if [ "$1" = 'ngrok' ]; then
    ######################
    /ngrokd -domain ngrok.t0.daoapp.io
    # looping
    # while true; do sleep 9876543210; done;
else
    exec "$@"
fi


