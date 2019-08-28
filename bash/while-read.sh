#!/bin/bash

content=$(mktemp)
cat <<EOF > $content
line with spaces
another line with spaces
cat-ing this to for-loop would be bad
EOF

while read line; do
    echo "$line"
done < $content

tac $content | while read line; do
    echo "$line"
done

rm -f $content
