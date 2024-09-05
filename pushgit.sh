#!/bin/bash

GIT=`which git`

readarray -t backups < backup-files.txt;

for file in $"${backups[@]}"
do
    new_name=$(echo "$file" | tr / .)

    if [[ -z "${file}" || "$file" =~ ^# ]]; then
	continue
    fi
    
    echo newname: "$new_name"
    cp "$file" "./$new_name"
done

${GIT} add --all .
${GIT} commit -m "Test Commit"
${GIT} push
