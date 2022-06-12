#!/bin/bash
sleep_duration=10

while ! nice -n 19 deluged -d -L info; do
  echo "Sleeping $sleep_duration seconds..."
  sleep $sleep_duration
  echo "Restarting deluged..."
  echo
  echo
done
