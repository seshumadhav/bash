ps -e | grep skype | awk -F" " '{print $1}' | xargs kill -9;
ps -e | grep skype
sudo killall pulseaudio
skype &
