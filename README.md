<div align="center">

# DEV BASH

##### Developer's tool for quick project creation.

##### Repository is currently under development in WSL2 Debian system, it is not tested or intended yet for Windows/Mac

<div align="left">

## Installation

The repository contains the installation instructions in `install.sh` file. To install execute the following commands:

```bash
# allow for execution of the file
chmod +x install.sh

# run install script
./install.sh
```

This will copy the `dev.sh` shell script into `$HOME/.local/bin`, making it available to the local user.
`$HOME/.local/bin` is the desginated folder for user's custom scripts.

\*Make sure the path to user level `bin` directory is available in the $PATH variables in `.bashrc` or `.zshrc` for execution and automplete capabilites (if the system supports it).
If not you can simply add this line in your `.bashrc` or `.zshrc` file usually located in the `$HOME` directory (`~`).

```bash
# .bashrc or .zshrc
export PATH="$PATH:$HOME/.local/bin"
```

## Uninstall

To remove `dev` from your Debian system run the `uninstall.sh` script:

```bash
# allow for execution of the file
chmod +x uninstall.sh

# run install script
./uninstall.sh
```
