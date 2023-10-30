#!/bin/bash

declare -a tags=("v1.373.1" "v1.373.1-rc.2")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags