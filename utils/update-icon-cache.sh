#!/bin/sh

set -eux


for dir in $SNAPCRAFT_PART_INSTALL/usr/share/icons/*/; do
  if [ -f $dir/index.theme ]; then
    gtk-update-icon-cache -q $dir
  fi
done