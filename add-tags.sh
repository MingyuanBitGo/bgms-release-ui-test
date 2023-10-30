#!/bin/bash

declare -a tags=("v1.369.2-rc.1" "v1.369.2-rc.0" "v1.364.2-rc.3")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags
