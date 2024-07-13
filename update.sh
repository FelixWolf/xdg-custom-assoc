#!/usr/bin/env bash

# Ensure root
if ! [ $(id -u) = 0 ]; then
    sudo $0
    exit $?
fi

# Iterate over files
for f in mimes/*/*.xml; do
    xdg-mime install --mode system "${f}"
done

update-mime-database /usr/share/mime