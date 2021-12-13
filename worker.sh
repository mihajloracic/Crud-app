#!/usr/bin/env bash
PORT_NUMBER=8080
if [[ `git status --porcelain` ]]; then
  lsof -i tcp:${PORT_NUMBER} | awk 'NR!=1 {print $2}' | xargs kill
else
  echo 'no changes'
fi