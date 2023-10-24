#!/bin/bash

declare -a tags=("v1.369.0" "v1.369.1" "v1.369.2" "v1.368.1" "v1.369.0-rc.0" "v1.369.0-rc.1" "v1.369.0-rc.2" "v1.369.0-rc.4" "v1.369.1-rc.0" "v1.364.0-rc.5")

for tag in "${tags[@]}"
do
    echo "create tag: $tag"
    git tag $tag
done

git push origin --tags
