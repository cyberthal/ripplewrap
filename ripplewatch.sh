#!/bin/bash

# This script rebuilds a Rippledoc site whenever a markdown source file in the watched directory is added or changed or ?deleted?.
# The sed ignores Emacs autosave versions of .md files.
# Script assumes ripplebuild.sh is in path.

livereloadx &

while true; do find . -name '*.md' | sed 's/.*\/\.#.*//' | sed 's/.*\/#.*//' | grep -v '^$' | entr -d ~/bin/ripplebuild.sh; done
