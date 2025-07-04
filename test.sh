#!/bin/sh
HTML_FILE_NAME="test"
TAB="\\t\\t\\t\\t\\t\\t\\t\\t\\t"
sed -i "2 i ${TAB}<a href=\"https://rssargenti.github.io/posts_html/${HTML_FILE_NAME}\"></a>" new.md