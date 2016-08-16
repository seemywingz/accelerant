#!/bin/bash

LOCAL_PORT=10001

JUMP_PEM="-i filename.pem"
JUMP_USER="jumpuser"
JUMP_SERVER="10.0.0.0"

REMOTE_PEM="remote.pem"
REMOTE_USER="remoteuser"
REMOTE_SERVER="10.0.0.1”

echo "Setting up remote tunnel to $JUMP_SERVER on local port $LOCAL_PORT"
ssh $JUMP_PEM $JUMP_USER@$JUMP_SERVER -L $LOCAL_PORT:$REMOTE_SERVER:22 -fN

echo "Logging in to $REMOTE_SERVER from localhost port $LOCAL_PORT"
ssh $REMOTE_PEM $REMOTE_USER@localhost -p $LOCAL_PORT

echo "Stopping remote tunnel on port $LOCAL_PORT"
sudo kill $(lsof -ti :$LOCAL_PORT)
