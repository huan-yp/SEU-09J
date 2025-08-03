#!/bin/bash
DATE_HASH=$(git log -1 --pretty=format:"%ad_%h" --date=short | tr -d '-')
DIR_NAME=_wp_$DATE_HASH
rm -rf _wp_*
mkdir $DIR_NAME
SITE=_site
cp $SITE/favicon.ico $DIR_NAME
cp $SITE/*.html $DIR_NAME
cp -r $SITE/css $DIR_NAME
cp -r $SITE/fonts $DIR_NAME
cp -r $SITE/js $DIR_NAME
cd $DIR_NAME
echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">' > displayinfo.htm
echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">' > listcolumn.htm
find . -name "*.html" -exec sed -i.bak 's/localhost:4000/chpu437.github.io/g' {} +
find . -name "*.html.bak" -exec rm {} +
cp index.html main.htm
zip -r "$(basename "$PWD").zip" ./*
