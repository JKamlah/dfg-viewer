#!/bin/sh

# Set alias for podman as docker please comment if you use docker
alias docker='podman'

files="Private/Less/structure.less
Private/Less/variables.less
Private/Less/website/header.less
Private/Less/website/home.less
Private/Less/website/content.less
Private/Less/website/structure.less
Private/Less/modules/sidebar.less
Private/Partials/ControlBar.html
Public/Images/BERD-NFDI_logo_white.svg
Public/Images/BERD-NFDI_logo_green_black.svg
Public/Images/BERD-NFDI_green_waves_white_bg.svg"

for file in $files; do
    docker cp "./Resources/$file" "kitodo-presentation-main:/var/www/typo3/public/typo3conf/ext/dfgviewer/Resources/$file"
done

docker exec --workdir /var/www/typo3/public/typo3conf/ext/dfgviewer/Build/ kitodo-presentation-main grunt less

