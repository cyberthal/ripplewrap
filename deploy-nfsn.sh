#!/bin/bash

# script will only run correctly from script directory
# only absolute paths work. ~/ will fail.
# symlinks won't work.

mkdir -p /home/private/bin
wget -cvN --directory-prefix=/home/private/bin https://gitlab.com/uvtc/rippledoc/raw/master/rippledoc.py
chmod +x /home/private/bin/rippledoc.py
rm -f /home/private/bin/wripple*
cp ./wripple* /home/private/bin
