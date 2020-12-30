#!/bin/sh
set -e

INIT_WAIT=${INIT_WAIT:-20}

if [ -f "./bin/syncdb.py" ]; then
    echo "wait ${INIT_WAIT}s for mysql initialize..."
    sleep $INIT_WAIT
    python ./bin/syncdb.py
    mv ./bin/syncdb.py ./bin/syncdb.bak.py 
fi

exec "$@"