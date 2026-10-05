#!/bin/sh
TESS_DATA=/app/share/tesseract
TESS_BIN=/app/bin/client
TESS_OPTIONS="-u${XDG_DATA_HOME}/tesseract"

cd ${TESS_DATA}
exec ${TESS_BIN} ${TESS_OPTIONS} "$@"
