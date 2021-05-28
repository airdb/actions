#!/bin/sh -l

env
git clone $GITHUB_SERVER_URL/$GITHUB_REPOSITORY
pwd
ls -lt

apt update
apt install -y hugo 
hugo version

echo "Welcome to use dockerfile."
