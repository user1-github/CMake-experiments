#!/bin/sh
CUBE_DATA=/app/share/assaultcube
CUBE_BIN=/app/bin/ac_client
CUBE_OPTIONS="--home=${HOME}/.assaultcube --init"

cd ${CUBE_DATA}
exec ${CUBE_BIN} ${CUBE_OPTIONS} "$@"
