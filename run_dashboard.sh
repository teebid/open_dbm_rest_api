#!/bin/bash

cd dashboard
npm start &
P1=$!

activate_venv() {
    cd flask-server
    source venv/Scripts/activate
}
activate_venv

cd ../..
python dashboard/flask-server/server.py $1 $2 &
P2=$!

wait $P1 $P2