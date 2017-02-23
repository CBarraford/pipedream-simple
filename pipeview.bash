#!/bin/bash

set -e
set -x

SHA=$1

if [ ! -d /pipedream-simple ]; then
    cd / 
    git clone --progress https://github.com/CBarraford/pipedream-simple.git
    cd /pipedream-simple
    git checkout $SHA
fi

cd /pipedream-simple
go run simple.go
