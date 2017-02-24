#!/bin/bash

emoji=(🍔 🍪 🍕 🍖 🍗 🍘 🍙 🍚 🍛 🍜 🍝 🍞 🍟 🍣 🍤 🍥 🍱 🍲 🍳 🍴)
selectedexpression=${expressions[$RANDOM % ${#expressions[@]} ]}
set -e

SHA=$1

if [ ! -d /pipedream-simple ]; then
    cd / 
    git clone https://github.com/CBarraford/pipedream-simple.git
    cd /pipedream-simple
    git reset --hard $SHA
fi

echo 🍔; sleep 0.25
echo 🍪; sleep 0.25
echo 🍕; sleep 0.25
echo 🍖; sleep 0.25
echo 🍗; sleep 0.25
echo 🍘; sleep 0.25
echo 🍙; sleep 0.25
echo 🍚; sleep 0.25
echo 🍛; sleep 0.25
echo 🍜; sleep 0.25
echo 🍝; sleep 0.25
echo 🍞; sleep 0.25
echo 🍟; sleep 0.25
echo 🍣; sleep 0.25
echo 🍤; sleep 0.25
echo 🍥; sleep 0.25
echo 🍱; sleep 0.25
echo 🍲; sleep 0.25
echo 🍳; sleep 0.25
echo 🍴; sleep 0.25

set -x

cd /pipedream-simple
go run simple.go
