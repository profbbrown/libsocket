#!/bin/bash

LDFLAGS="-lsocket"
CFLAGS=""

if [ "$(uname)" = "Darwin" ]; then
    CFLAGS="-I/usr/local/include/libsocket"
    LDFLAGS="$LDFLAGS -L/usr/local/lib -Wl,-rpath,/usr/local/lib"
fi

gcc $CFLAGS $LDFLAGS -o http http.c
gcc $CFLAGS $LDFLAGS -o get_address_family get_address_family.c
gcc $CFLAGS $LDFLAGS -o multicast_listen multicast_listen.c

