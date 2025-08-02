#!/bin/bash
DATE_HASH=$(git log -1 --pretty=format:"%ad_%h" --date=short | tr -d '-')
DIR_NAME=wp_$DATE_HASH
rm -rf $DIR_NAME
mkdir $DIR_NAME
SITE=_site
cp $SITE/favicon.ico $DIR_NAME
cp $SITE/*.html $DIR_NAME
cp -r $SITE/css $DIR_NAME
cp -r $SITE/fonts $DIR_NAME
cp -r $SITE/js $DIR_NAME

