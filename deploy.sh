#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/bin
rm -f ~/bin/ripple*
ln -s $SCRIPT_DIR/ripple* ~/bin

