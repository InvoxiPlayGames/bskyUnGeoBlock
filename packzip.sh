#!/bin/bash
# prepare and delete leftovers
mkdir out &> /dev/null
rm out/bskyUnGeoBlock.zip &> /dev/null
rm -rf extension/_metadata &> /dev/null
# make the zip
cd extension
zip -r ../out/bskyUnGeoBlock.zip .
cd ..