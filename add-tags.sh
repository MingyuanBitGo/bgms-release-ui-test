#!/bin/bash

declare -a tags=("v1.371.0" "v1.372.0-rc.0")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags
