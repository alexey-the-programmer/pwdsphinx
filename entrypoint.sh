#!/usr/bin/env bash

if [ $MODE == "client" ]
then
    python client.py
fi

python start_server.py