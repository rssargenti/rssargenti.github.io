# rssargenti.github.io

This site is under construction. Please come back another time!

following this HTML tutorial:
https://easyhtmlcss.com/lessons/15-putting-it-all-together

and this CSS/flexbox tutorial:
https://flexboxfroggy.com/

This site uses a custom build script pre-commit to generate HTML files from markdown. 

To add new pages:
1) create new markdown file in `posts_md` folder.
2) commit changes to trigger build.
3) review page in `posts_html` for any mistakes.
4) commit change to index.html (**note**: this whole process should be automated as GitHub Action)

# TODO:
- update build script to use variable for insertion line-number (current number is hardcoded)
- research committing build trigger
- move build trigger from local hook to GitHub Action
- cleanup source code / make more robust

