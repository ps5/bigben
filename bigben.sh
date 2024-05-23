#!/bin/bash
# Big-Ben chimes

# change to scripts folder
cd "$(dirname "$0")"

# get current time
hour=$(date +"%I")
minute=$(date +"%M")

# get platform
if [ $(uname) == "Darwin" ]; then
	aplay="afplay" # OSX
else
	aplay="aplay" # Debian default
fi

# play chimes
case $minute in

    "00")
	$aplay wav/bigben0.wav
	i=0
	while [ $i -lt $hour ]
	do
	    aplay wav/bigbenstrike.wav
	    let i=i+1
	done
	;;

    "15")
	$aplay wav/bigben15.wav
	;;

    "30")
	$aplay wav/bigben30.wav
	;;

    "45")
	$aplay wav/bigben45.wav
	;;

esac

