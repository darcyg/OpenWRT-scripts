#!/bin/sh
sta_wlan0=`iw dev wlan0 station dump`
sta_wlan1=`iw dev wlan1 station dump`
if [ -n "$sta_wlan0" ] && [ -n "$sta_wlan1" ]; then 
	echo "Both wlans are active"
else
	if [ -z "$sta_wlan0" ]; then 
		echo "wlan0 is inactive"
	fi
	if [ -z "$sta_wlan1" ]; then
		echo "wlan1 is inactive"
	fi
fi