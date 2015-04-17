#!/bin/bash

NEKOFOLDER="./bin/neko/"
NEKOINSTALL="/usr/lib/neko/"
NEKOBIN="/usr/bin/"

echo "Installing Neko to $NEKOINSTALL"
	sudo rm -Rf $NEKOINSTALL
	sudo mkdir -p $NEKOINSTALL
	sudo cp -R $NEKOFOLDER/* $NEKOINSTALL
	files=( "neko" "nekoc" "nekoml" "nekotools" )
	for f in "${files[@]}"
	do :
		sudo rm ${NEKOBIN}${f}
		sudo ln -s ${NEKOINSTALL}${f} ${NEKOBIN}${f}
	done
echo "... Done"
