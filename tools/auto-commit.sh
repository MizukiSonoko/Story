#!/bin/bash

git config --global user.email "mizuki.sonoko@gmail.com"
git config --global user.name  "mizukisonoko"

DATE=`date +"v%Y%m%d-%H:%M:%S"`
echo $DATE >> terraform.md
git add *
git checkout -b snapshot
git commit -m "[auto] Update Papar (${DATE})"
git push "git@github.com:${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}.git" snapshot

