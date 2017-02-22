#!/bin/bash

set -e
set -x

if [ ! -d /pipedream-simple ]; then
    cd / 
    git clone -o remote -b $1 https://github.com/CBarraford/pipedream-simple.git
fi

cd /pipedream-simple
go run simple.go
