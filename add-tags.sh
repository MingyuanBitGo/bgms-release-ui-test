#!/bin/bash

declare -a tags=("v1.377.5-rc.7")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags

