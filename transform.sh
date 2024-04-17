#!/bin/bash

DIST_DIR="./dist"
OUTPUT_DIR="./dist"

find "$DIST_DIR" -name 'index.html' | while read -r filepath; do
    newpath=$(echo "$filepath" | sed -e "s|^$DIST_DIR/||" -e 's|/index.html||')
    newfilename=$(echo "$newpath" | tr '/' '-')
    cp "$filepath" "$OUTPUT_DIR/$newfilename.html"
done

