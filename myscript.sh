#!/bin/bash

OUTDIR="published"
LOCAL_GHOST="http://localhost:2368/"
YMD=$(date +"%Y-%m-%d-%H-%M-%S")

wget -r -nH -P . -E -T 2 -np -k "$LOCAL_GHOST"
git add . -f
git commit -m "Update: new post $YMD"
git push origin published

