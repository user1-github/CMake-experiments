#!/bin/sh
AC_DATA=/app/share/assaultcube
AC_BIN=/app/bin/client
AC_OPTIONS="--home=${XDG_DATA_HOME}/assaultcube --init"

cd ${AC_DATA}
exec ${AC_BIN} ${AC_OPTIONS} "$@"
