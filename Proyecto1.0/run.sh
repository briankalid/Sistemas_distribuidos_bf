#!/bin/bash

for arg in "$@"
do
  case $arg in
  -a|--all)
  python3 trend_tweet.py
  python3 update_database.py
  python3 processing.py;;

  -od|--data_obtain)
  python3 trend_tweet.py;;

  -udb|--update_database)
  python3 update_database.py;;

  -p|--processing)
  python3 processing.py

  esac
  shift
done
