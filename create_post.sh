#!/bin/sh
#Jekyll post creator
echo Enter the title of the post
read title

NOW=$(date +"%F")
NOWT=$(date +"%T")
NAME=$(${NOW}-${title})
FILENAME="${NAME}.md"

echo >> "${FILENAME}"
echo "---" >> "${FILENAME}"
echo "layout: post" >> "${FILENAME}"
echo "title:  ${title}" >> "${FILENAME}"
echo "date: ${NOW} ${NOWT}" >> "${FILENAME}"
echo "---" >> "${FILENAME}"
echo "Write some content here" >> "${FILENAME}"

