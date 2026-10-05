#!/bin/sh
SAUER_DATA=/app/share/sauerbraten
SAUER_BIN=/app/bin/client
SAUER_OPTIONS="-q${XDG_DATA_HOME}/sauerbraten"

cd ${SAUER_DATA}
exec ${SAUER_BIN} ${SAUER_OPTIONS} "$@"
