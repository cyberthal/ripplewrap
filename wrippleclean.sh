#!/bin/bash

# This script removes all auto-generated files from the Rippledoc directory
# so that rippledoc.sh will generate a clean build from the source
# with no leftovers due to renames, and no deference to prior ToC or css.
# Do not use if you have customizations.

find . -name "*.html" | xargs rm -v

# find . -name "*.css" | xargs rm -v
# find . -name "toc.conf" | xargs rm -v
# find . -name "toc.md" | xargs rm -v
