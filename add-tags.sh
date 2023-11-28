#!/bin/bash

declare -a tags=("v1.381.0-rc.5")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags
