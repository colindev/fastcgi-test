#!/bin/bash

ADD=${1:-0}

QUERY_STRING=/?

for ((i=2; i<=$ADD;++i))
do
    QUERY_STRING=${QUERY_STRING}x
done

curl -v "http://127.0.0.1:8000${QUERY_STRING}"
