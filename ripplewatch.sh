#!/bin/bash

# This script rebuilds a Rippledoc site whenever a markdown source file in the watched directory is added or changed or ?deleted?.  
# It ignores Emacs autosave versions of .md files.  That's what sed is for.
# It assumes ripplebuild.sh is in path.

while true; do find . -name '*.md' | sed 's/.*\/\.#.*//' | sed 's/.*\/#.*//' | grep -v '^$' | entr -d ripplebuild.sh; done
