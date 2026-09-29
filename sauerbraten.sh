#!/bin/sh
SAUER_DATA=/app/share/sauerbraten
SAUER_BIN=/app/bin/sauerbraten_client
SAUER_OPTIONS="-q${HOME}/.sauerbraten"

cd ${SAUER_DATA}
exec ${SAUER_BIN} ${SAUER_OPTIONS} "$@"
