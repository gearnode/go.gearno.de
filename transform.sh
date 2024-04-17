#!/bin/bash

DIST_DIR="./dist"

find "$DIST_DIR" -name 'index.html' | while read -r filepath; do
    dirpath=$(dirname "$filepath")
    parentdir=$(dirname "$dirpath")
    basedirname=$(basename "$dirpath")
    newfilename="${basedirname}.html"
    cp "$filepath" "$parentdir/$newfilename"
done

