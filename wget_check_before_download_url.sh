#!/usr/bin/bash

function validate_url(){
  if [[ `wget -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
    return 0
  else
    return 1
  fi
}

endpoint = "url want to download"
if validate_url $endpoint; then
  echo "Dowloading $endpoint"
  wget -k -c $endpoint
 else
  echo "Downloaded $endpoint"
fi
