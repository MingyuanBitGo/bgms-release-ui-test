#!/bin/bash

declare -a tags=("v1.382.1-rc.0")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags

