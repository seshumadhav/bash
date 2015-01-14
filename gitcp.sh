# commit
echo -e "Committing all changes to local repo. Command: 'git commit -m $1\'\n"
git commit -m $1
read -p "Proceed to PULL ([y]/n) ? " answer
    case $answer in
        [Nn]* ) echo "Qutting..."; exit;;
        * ) ;;
    esac

# pull
echo -e "Pulling all changes from remote repo. Command: 'git pull origin master'\n"
git pull origin master
read -p "Proceed to PUSH ([y]/n) ? " answer
    case $answer in
        [Nn]* ) echo "Qutting..."; exit;;
        * ) ;;
    esac

# push
echo -e "Pushing commits to remote repo. Command: 'git push origin master'\n"
git push origin master

