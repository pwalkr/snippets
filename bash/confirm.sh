#!/bin/bash

echo -n "See the rest of the demo? [Y/n] "
read response

case "$response" in
    NO|No|no|N|n)
        echo "Too bad."
        ;;
    YES|Yes|yes|Y|y)
        ;& # Fall-through
    *)
        echo "This is it, really."
        ;;
esac
