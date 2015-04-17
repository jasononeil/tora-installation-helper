#!/bin/bash

TORAINSTALL="/usr/lib/tora/"
TORABIN="./bin/tora/"

echo "Installing tora to $TORAINSTALL"
	sudo rm -Rf $TORAINSTALL
	sudo mkdir -p $TORAINSTALL
	sudo cp -R ${TORABIN}* $TORAINSTALL
echo "... Done"

echo "Copying tora_safe"
	sudo cp ${TORABIN}extra/tora_safe /usr/bin/tora_safe
	sudo chmod a+x /usr/bin/tora_safe
echo "... Done"

echo "Copying init script"
	sudo cp ${TORABIN}extra/tora_init /etc/init.d/tora
	sudo chmod a+x /etc/init.d/tora
echo "... Done"

echo "Initialising init script"
	sudo update-rc.d tora defaults
echo "... Done"
