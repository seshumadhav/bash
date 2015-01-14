# Status
echo -e "\n\nCurrent git status. Command: 'git status'\n"
git status
read -p "Proceed to STAGE ([y]/n) ? " answer
    case $answer in
        [Nn]* ) echo "Qutting..."; exit;;
        * ) ;;
    esac

# Add everything
echo -e "\n\nStaging all changes. Command: 'git add .'\n"
git add .
read -p "Proceed to COMMIT ([y]/n) ? " answer
    case $answer in
        [Nn]* ) echo "Qutting..."; exit;;
        * ) ;;
    esac

# commit
echo -e "\n\nCommitting all changes to local repo. "
echo -e "\nCommand: git commit -m \"$1\"\n"
git commit -m $1
read -p "Proceed to PULL ([y]/n) ? " answer
    case $answer in
        [Nn]* ) echo "Qutting..."; exit;;
        * ) ;;
    esac

# pull
echo -e "\n\nPulling all changes from remote repo. Command: 'git pull origin master'\n"
git pull origin master
read -p "Proceed to PUSH ([y]/n) ? " answer
    case $answer in
        [Nn]* ) echo "Qutting..."; exit;;
        * ) ;;
    esac

# push
echo -e "\n\nPushing commits to remote repo. Command: 'git push origin master'\n"
git push origin master


