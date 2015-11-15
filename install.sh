#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
chmod o+x swiftpush
ln -s $DIR/swiftpush /usr/local/bin/swiftpush
