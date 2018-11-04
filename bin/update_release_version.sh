#!/bin/bash

update_release_version(){
  local file
  local date
  local version

  cd "$(git rev-parse --show-toplevel)"


  file=.release-version
  date=$(date +%Y%m%d%H%M%S)

  sed -i "s|^\([^-]\+\)\(-.*\)\?$|\1-$date|" $file
  git add $file


  git config user.email "admin@getto.systems"
  git config user.name  "admin@getto.systems"
  git commit -m "update release-version"
}

update_release_version
