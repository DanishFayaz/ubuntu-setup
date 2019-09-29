#!/usr/bin/env bash

set -e

MARKER=$(basename "${BASH_SOURCE%.*}")

###############################################################################
# Visual Studio Code Editor Extensions
###############################################################################
# URL: https://code.visualstudio.com/
###############################################################################

NAME="Visual Studio Code Extensions"

###############################################################################

print_banner "$NAME"

if [ ! -f $MARKER_DIRECTORY/$MARKER ]; then
    code --install-extension 2gua.rainbow-brackets \
    && code --install-extension alefragnani.Bookmarks \
    && code --install-extension cospaia.clojure4vscode \
    && code --install-extension dbaeumer.vscode-eslint \
    && code --install-extension donjayamanne.githistory \
    && code --install-extension dracula-theme.theme-dracula \
    && code --install-extension eamodio.gitlens \
    && code --install-extension esbenp.prettier-vscode \
    && code --install-extension flowtype.flow-for-vscode \
    && code --install-extension ms-vscode.Go \
    && code --install-extension msjsdiag.debugger-for-chrome \
    && code --install-extension rust-lang.rust \
    && code --install-extension vscode-icons-team.vscode-icons \
    && code --install-extension Zignd.html-css-class-completion \
    && finish_install $MARKER
else
    already_installed $MARKER
fi
