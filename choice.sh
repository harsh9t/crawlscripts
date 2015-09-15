#!/bin/bash
 
# clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Data gathering script"
tput sgr0
 
tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Download latest Wikidata dump"
 
tput cup 8 15
echo "2. Download latest Freebase dump"
 
tput cup 9 15
echo "3. Download latest DBpedia dump"
 
tput cup 10 15
echo "4. Exit"
 
# Set bold mode 
tput bold
tput cup 12 15
read -p "Enter your choice [1-4]" choice

#choice=$?


case $choice in
	1) echo "Wikidata dump gathering started";;
	2) echo "Freebase dump gathering started";; 
	3) echo "DBpedia dump gathering started";;
	4) echo "Exiting";;
esac

#tput clear
#tput sgr0
#tput rc