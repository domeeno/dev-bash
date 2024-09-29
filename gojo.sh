#!/bin/bash
# Author: Flocea Dominic https://github.com/domeeno

## Installing/Removing dependencies
# Keep track of manually installed dependencies through apt-get

dependency_file "$HOME/.gojo-dependencies"

# TODO write installed dependencies to dependency_file
install_dependencies() {
  for dependency in "${@:2}"
  do
    echo "Installing $dependency"
    if  apt install "$dependency"; then
      echo "$dependency" >> dependency_file
    fi
  done
}

# TODO remove dependencies from dependency_file if removed
remove_dependencies() {
  for dependency in "${@:2}"
  do
    echo "Removing $dependency"
    apt remove "$dependency"
  done
}
## Installing/Removing dependencies

## Project Creation
# Bootstrap project creation: Build tools, dependencies and initial boilerplate code
prompt_new_project() {
  read -p "Hi $USER! You want to start a new project? (y/n): " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    init_new_project
  else
    echo "Ah, okay, until next time!"
  fi
}

init_new_project() {
  read -p "Enter project name: " project_name

  read -p $'What technology?\n- cpp\n- react\n- python\n' -r
  echo "$project_name"
  echo "$REPLY"
  if [[ $REPLY == "react" ]]
  then
    git clone git@github.com:domeeno/domeeno-react-template.git "$project_name"
  else
    echo "not yet implemented"
  fi
}
## Project Creation

if [ "$1" = "dev" ] ; then
  prompt_new_project
elif [ "$1" = "install" ]; then
  install_dependencies "$@"
elif [ "$1" = "remove" ]; then
  remove_dependencies "$@"
else
  echo "unrecognized command"
fi

