#!/bin/bash

hr() { 
	i=1; 
	while [ $i -le $COLUMNS ] ; 
		do i=$((i+1)); 
		printf "%s" "${1:-~}"; 
	done ; 
}

progress_bar() {
    local progress=0
    local total=50
    echo -n '['
    while [ $progress -lt $total ]; do
        sleep 0.1
        echo -n '#'
        progress=$((progress + 1))
    done
    echo "] $((progress * 2))%"  # Showing percentage at the end
}

echo 'Initiating daily maintenance script....'
progress_bar
echo 'Initiated!'

hr

echo 'Preparing to update.'
progress_bar
echo 'Updating....'
sudo apt update 
echo 'Update completed!'

hr

echo 'Preparing to upgrade.'
progress_bar
echo 'Upgrading....'
sudo apt upgrade -y
echo 'Upgrade completed!'

hr

echo 'Preparing to clean up.'
progress_bar
echo 'Cleaning up....'
sudo apt autoremove
echo 'Clean up finished!'

hr

echo 'Shutting down script....'
progress_bar
echo 'All finished.  Have a nice day!'

