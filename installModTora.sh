#!/bin/bash

SITENAME=tora_admin
SITECONF=/etc/apache2/sites-available/${SITENAME}.conf

./installNeko.sh
./installTora.sh

# TODO: Check if we need to modify apache to use MPM-Prefork instead of Worker. We want prefork I think.

echo "Installing mod_neko and mod_tora, and enabling mod_tora"
	sudo cp apache-mods/* /etc/apache2/mods-available/
	sudo a2dismod neko
	sudo a2enmod tora
echo "... Done"

echo "Installing tora.* subdomain"
	if [ ! -f $SITECONF ] ; then
		sudo cp ./bin/tora/extra/tora_admin_site.conf $SITECONF
		sudo nano $SITECONF
		sudo a2ensite $SITENAME
	fi
echo "... Done"

echo "You may need to run [sudo service apache2 restart] now."
