#!/bin/sh
# @author: smc@mobolt.com

scriptName='git-synctohub.sh';
marker='\n==='
echo "$marker"
echo "Running '$scriptName'";

Run() {
	echo "$marker";
	echo "Attempting to run command: '$1'\n";
        $1
}

# command="git status"
# Run "$command";

command="git fetch --all"
Run "$command"

command="git reset --hard origin/master"
Run "$command"
