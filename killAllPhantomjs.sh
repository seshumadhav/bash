echo -e "\n===\n1. Listing all phantomjs processes: \n"
ps -e | grep phantomjs

echo -e "\n===\n2. Attempting to kill all phantom js processes...\n"
ps -e | grep phantomjs | awk '{ print $1 }' | xargs kill -9

echo -e "\n===\n3. All phantomjs processes remaining after trying to kill: \n"
ps -e | grep phantomjs
