#!/usr/bin/env bash

RES_PATH=/usr/lib/slack/resources/app.asar.unpacked/src/static

BLUE_DOT_ICON=slack-taskbar-unread.png
DEFAULT_ICON=slack-taskbar-rest.png

cd $RES_PATH && {
  mv $BLUE_DOT_ICON old-blue-dot-icon.png
  cp $DEFAULT_ICON $BLUE_DOT_ICON
}

echo 'Done!'