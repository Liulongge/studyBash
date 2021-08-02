#! /bin/bash

if [[ $1 = a ]]; then
    echo "aaaaaaa"
    ./callSelf.sh b
fi

if [[ $1 = b ]]; then
    echo "bbbbbbbb"
    ./callSelf.sh c
fi

if [[ $1 = c ]]; then
    echo "cccccccc"
    echo "end c"
fi

echo "end"
