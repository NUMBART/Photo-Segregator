#!/bin/bash
#bash assignment to group images in photos folder by month and year
cd ~/Documents/Bash\ Scripts/assignment/groups
images=$(ls ~/Documents/Bash\ Scripts/assignment/photos)
for img in $images
do
	year=${img:0:4}
	month=${img:5:1}
	[ ! -d "./$year" ] && mkdir $year; cd "./$year"
	[ ! -d "./$month" ] && mkdir $month; cd "./$month"

	newname="img$(( $( ls | wc -l )+1 )).jpg"
	mv ~/Documents/Bash\ Scripts/assignment/photos/$img $newname
	cd ~/Documents/Bash\ Scripts/assignment/groups
done
