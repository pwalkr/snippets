#!/bin/bash

# echo/eval function to print commands before execution.
# Use set -x to print commands with proper escaping (braces silence the +x)

ee() {
    local exe="$1"
    shift
    set -x
    $exe "$@"
    { set +x; } 2>/dev/null
}

ee echo foo
ee echo bar
