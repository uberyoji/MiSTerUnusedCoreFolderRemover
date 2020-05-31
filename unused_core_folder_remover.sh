#!/bin/bash

# init
BASE_PATH="/media/fat"
UNUSED="_Computer _Other _Utility"
DIR=""

for FOLDER in $UNUSED; do
    DIR="$BASE_PATH/$FOLDER"

	# look if dir exists to begin with
	if [[ -d "$DIR" ]]; then
		# look if dir is empty
		if [ "$(ls -A $DIR)" ]; then
			echo "Warning: $DIR is not Empty. Skipping..."
		else
			echo "Removing $DIR."
			rm -rf "$DIR"
		fi
	else
		echo "Info: $DIR not found. Skipping..."
	fi
done

echo
echo "Unused core folder(s) have been cleared (if found and empty)!"
echo
exit 0
