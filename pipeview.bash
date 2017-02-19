#!/bin/bash

set -x
set -e

cd / 
git clone -o remote -b $1 https://github.com/CBarraford/pipedream-simple.git
cd pipedream-simple
go run simple.go
