# Convert a mp4 to a dvd compatible avi
mencode ~/Videos/ZeroDarkThirty.mp4 -ovc
xvid -oac mp3lame -lameopts cbr:br=128 -xvidencopts pass=1 -o /dev/null;
mencoder ~/Videos/ZeroDarkThirty.mp4 -ovc xvid -oac mp3lame -lameopts cbr:br=128
-xvidencopts pass=2:bitrate=-700000 -o zdk.avi
