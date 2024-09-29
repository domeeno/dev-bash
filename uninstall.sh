#!/bin/bash
# Author: Flocea Dominic https://github.com/domeeno

source env.sh

function uninstall_local() {
  if ! [ -f "$filepath" ]; then
    echo "interesting, '$filename' is not installed at $filepath"
    return 0
  fi

  if sudo rm "$filepath"; then
    echo "great, you uninstalled '$filename' from '$filepath'"
  else
    echo "downer, couldn't remove '$filename' from '$filepath'"
  fi
}

# Uninstall
uninstall_local

