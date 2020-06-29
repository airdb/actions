#!/bin/sh -l

env
echo "xxx============"
cat $GITHUB_EVENT_PATH
echo "xxx============"
echo "hello $1"
