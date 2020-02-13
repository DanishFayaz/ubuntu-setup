#!/usr/bin/env bash

set -e

MARKER=$(basename "${BASH_SOURCE%.*}")

###############################################################################
# Slack
###############################################################################
# URL: https://www.gitkraken.com/
###############################################################################

NAME="Slack"

###############################################################################

# SLACK_VERSION
[ -z "${SLACK_VERSION}" ] && SLACK_VERSION="4.3.2"

###############################################################################

SLACK_TEMP_FILE="$(mktemp -u).deb"
SLACK_URL=https://downloads.slack-edge.com/linux_releases/slack-desktop-$SLACK_VERSION-amd64.deb

###############################################################################

print_banner "$NAME"

if [ ! -f "$MARKER_DIRECTORY"/"$MARKER" ]; then
    curl -L $SLACK_URL -o "$SLACK_TEMP_FILE" \
    && sudo dpkg -i "$SLACK_TEMP_FILE" \
    && rm "$SLACK_TEMP_FILE" \
    && finish_install "$MARKER"
else
    already_installed "$MARKER"
fi
