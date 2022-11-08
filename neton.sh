#! /bin/bash 

nmcli net on
rfkill unblock all

printf " 

Would you like to open a web browser?  
Press y or n

	"
read ANS
if [ $ANS == "y" ]; then
	echo "

Which website would you like to start out on? 

1.  duckduckgo
2.  youtube
3.  reddit
4.  amazon
	" 
	read ANS_2;
	if [ $ANS_2 == 1 ]; then
		printf "\n\n  Duck Duck Go, baby!\n\n"
		espeak -s40 -p20 "duck dukck go. baby."
		exec brave-browser --incognito duckduckgo.com&
	elif [ $ANS_2 == 2 ]; then
		echo "
YouTube, baby! 
		"
		espeak -s40 -p20 "you tube. baby. "
		exec brave-browser --incognito youtube.com&
	elif [ $ANS_2 == 3 ]; then
		echo "
Watch out for the distraction pit...
		       "	
		espeak -s40 -p20 "watch out for the distraction pit..."
		exec brave-browser --incognitor reddit.com&
	elif [ $ANS_2 == 4 ]; then
		echo "
Don't spend too much... 
		"
		espeak -s40 -p20 "don't. spend. too. much."
		exec brave-browser --incognito amazon.com&
	else
		exec brave-browser --incognito&
	fi
fi
