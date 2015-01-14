ps -e | grep chrome | awk -F" " '{print $1}' | xargs kill -9;
ps -e | grep chrome
