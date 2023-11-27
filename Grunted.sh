#!/bin/sh

# Get all grunted files

# Set alias for podman as docker please comment if you use docker
alias docker='podman'

files="Public/JavaScript/allScripts.js
Public/JavaScript/webScripts.js
Public/Css/rte.css
Public/Css/rte.css.map
Public/Css/webStyles.css
Public/Css/webStyles.css.map
Public/Css/allStyles.css
Public/Css/allStyles.css.map"

for file in $files; do
    docker cp "kitodo-presentation-main:/var/www/typo3/public/typo3conf/ext/dfgviewer/Resources/$file" "./Resources/$file"
done


