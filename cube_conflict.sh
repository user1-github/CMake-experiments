#!/bin/sh
CUBE_DATA=/app/share/cubeconflict
CUBE_BIN=/app/bin/client
CUBE_OPTIONS="-u${XDG_DATA_HOME}/cubeconflict"

cd ${CUBE_DATA}
exec ${CUBE_BIN} ${CUBE_OPTIONS} "$@"
