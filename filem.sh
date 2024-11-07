#!/bin/bash

echo "Welcome to File Manipulation"
echo "Enter a file name: "
read filename
echo "Creating file"
touch $filename
echo "File created successfully!"
echo "1.view -v"
echo "2.update -u"
echo "3.insert -i"
echo "4.search -s"
echo "5.delete -d"
echo "6.exit -e"

while true; do
	echo "enter your choice"
	read choice
	case "$choice" in
		"v") cat $filename ;;
		"u")
			echo "new filename: "
			read newfile
			mv $filename $newfile
			filename=$newfile
			echo "Filename updated to $newfile"
			;;
		"i")
			echo "enter text to insert: "
			read text
			echo $text >> $filename
			echo "Text added"
			;;
		"s")
			echo "searching..."
			grep "$text" $filename || echo "text not found"
			;;
		"d")
			rm $filename
			echo "file deleted"
			;;
		"e")
			echo "exiting"
			break
			;;
		*)
			echo "invalid choice"
			;;
	esac
done

//to create,run shell script
nano filem.sh
chmod +x filem.sh
./filem.sh
