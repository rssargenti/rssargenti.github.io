#!/bin/sh

#https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
if ! command -v pandoc >/dev/null 2>&1
then
    echo "
    pandoc could not be found, try:
    apt update
    apt install pandoc
    "
    exit 1
fi

# Check if new.md is being committed
if git diff --cached --name-only | grep -q 'new.md'; then
    
    PANDOC_OUTPUT=$(pandoc -f markdown -t html new.md)
    HTML_TOP=$(cat ./templates/top_template.html)
    HTML_BOTTOM=$(cat ./templates/bottom_template.html)

    #https://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
    printf -v DATE '%(%Y-%m-%d)T' -1
    echo -e "${HTML_TOP}\n${PANDOC_OUTPUT}\n${HTML_BOTTOM}" > "posts_html/${DATE}.html"
    


else

    echo "new.md not being committed."
    
fi




