#!/bin/sh
# @author: smc@mobolt.com

scriptName='getAllFilesModifiedAfter.sh';
marker='\n==='
echo "$marker"
echo "Running '$scriptName'";

find . -maxdepth 1 -type f -newermt "$1" -exec ls --color -ld {} +
