#!/bin/bash

git config --global user.name ${GITHUB_NAME}
git config --global user.email ${GITHUB_EMAIL}

resume export index.html

git add index.html
git commmit -m "Deploy at `date +"%Y-%m-%d %H:%M"`"

git push origin gh-pages
