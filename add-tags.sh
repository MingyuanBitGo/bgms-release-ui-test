#!/bin/bash

declare -a tags=("v1.378.2")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags

