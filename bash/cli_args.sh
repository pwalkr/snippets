#!/bin/bash

# Process command line arguments.
# WARNING - shifts arguments. Do processing in function to preserve $@
while [ "$1" ]; do case "$1" in
    -h|--help)
        echo "Usage: ... exit"
        ;;
    -a|--arg)
        shift
        echo "Got arg: $1"
        ;;
    --arg=*)
        echo "Got arg: ${1#--arg=}"
        ;;
    *)
        echo "Unrecognized option: $1"
        ;;
esac; shift; done
