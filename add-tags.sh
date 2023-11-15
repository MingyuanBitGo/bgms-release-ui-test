#!/bin/bash

declare -a tags=("v1.375.0-rc.5" "v1.375.0-rc.4" "v1.374.7" "v1.374.7-rc.0" "v1.374.6")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags
