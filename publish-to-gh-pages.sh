#!/bin/bash

git config --global user.name ${GITHUB_NAME}
git config --global user.email ${GITHUB_EMAIL}

# create a new branch without any commit. It keeps the index and the working tree files intact
git checkout --orphan gh-pages

resume export index.html
git add index.html
git commit -m "Deploy at `date +"%Y-%m-%d %H:%M"`"

git push --force --quiet "https://${GITHUB_TOKEN}@${GITHUB_REPO}.git" gh-pages
