#!/bin/sh
VAL_DATA=/app/share/valhalla
VAL_BIN=/app/bin/client
VAL_OPTIONS="-u${XDG_DATA_HOME}/valhalla"

cd ${VAL_DATA}
exec ${VAL_BIN} ${VAL_OPTIONS} "$@"
