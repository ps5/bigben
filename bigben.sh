#!/bin/bash
# Big-Ben chimes

# change to scripts folder
cd "$(dirname "$0")"

# get current time
hour=$(date +"%I")
minute=$(date +"%M")

# play chimes
if [[ $minute == 00 ]] 
	then
  		aplay wav/bigben0.wav
		i=0
		while [ $i -lt $hour ]
		do
			aplay wav/bigbenstrike.wav
		    let i=i+1
		done
elif [[ $minute == 15 ]] 
	then 
		aplay wav/bigben15.wav
elif [[ $minute == 30 ]] 
	then
  		aplay wav/bigben30.wav
elif [[ $minute == 45 ]] 
	then
  		aplay wav/bigben45.wav
fi
