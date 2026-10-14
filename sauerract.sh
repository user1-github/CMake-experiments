#!/bin/sh
SAUER_DATA=/app/share/sauerract
SAUER_BIN=/app/bin/client
SAUER_OPTIONS="-u${XDG_DATA_HOME}/sauerract"

cd ${SAUER_DATA}
exec ${SAUER_BIN} ${SAUER_OPTIONS} "$@"
