#!/bin/bash
# Author: Flocea Dominic https://github.com/domeeno

source env.sh

install_local()
{
  if [ -f "$filepath" ]; then
    echo "interesting, '$filename' is already installed at $filepath"
    return 0
  fi

  if cp ./dev.sh "$filepath"; then
    echo "great, installed '$filename' at $filepath"
  else
    echo "downer, couldn't install '$filename' at $filepath"
  fi
}

install_local

