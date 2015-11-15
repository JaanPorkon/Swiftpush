#!/bin/bash

# This script creates a link to your bin folder so you can execute Swiftpush everywhere

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
chmod o+x swiftpush
ln -s $DIR/swiftpush /usr/local/bin/swiftpush
chmod o+x cpanel-backup.sh
