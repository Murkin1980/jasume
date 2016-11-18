#!/bin/bash

git config --global user.name ${GITHUB_NAME}
git config --global user.email ${GITHUB_EMAIL}

# clone the gh-pages branch
git clone -b gh-pages "https://${GITHUB_TOKEN}@${GITHUB_REPO}.git" public

resume export index.html
mv index.html public/
cd public

git add index.html
git commit -m "Deploy at `date +"%Y-%m-%d %H:%M"`"

git push origin gh-pages --force