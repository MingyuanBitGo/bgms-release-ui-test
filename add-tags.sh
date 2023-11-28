#!/bin/bash

declare -a tags=("v1.380.4" "v1.381.0-rc.4")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags
