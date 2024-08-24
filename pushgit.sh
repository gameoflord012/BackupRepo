#!/bin/bash

readarray -t backups < backup-files.txt;

for file in $"${backups[@]}"
do
    new_name=$(echo "$file" | tr / .)
    echo "$new_name"
    cp "$file" "./$new_name"
done

GIT=`which git`
${GIT} add --all .
${GIT} commit -m "Test Commit"
${GIT} push
