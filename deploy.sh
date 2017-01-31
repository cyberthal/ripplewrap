#!/bin/bash

# gets path from which the script was run
# symlinks will break

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# deploy executables to ~/bin

mkdir -p ~/bin
rm -f ~/bin/ripple*
ln -s $SCRIPT_DIR/ripple* ~/bin

