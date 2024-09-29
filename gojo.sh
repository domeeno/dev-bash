#!/bin/zsh
# Author: Flocea Dominic https://github.com/domeeno

prompt_hello() {
  read -p "Hi Dom! You want to start a new project? (y/n): " -n 1 -r
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

if [ "$1" = "dev" ] ; then
  prompt_hello
elif [ "$1" = "install" ]; then
  echo "not implemented" 
else
  echo "unrecognized command"
fi

