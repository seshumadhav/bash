ps -e | grep chromium-browse | awk -F" " '{print $1}' | xargs kill -9;
ps -e | grep chromium-browse
