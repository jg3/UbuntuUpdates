#!/bin/bash

if [ !$BASH ] ; then
  echo "Calling this script under sh will not work as well."
  echo "Either call as \"bash ./$1\" or do \"chmod u+x $1\" "
  echo "and then run it normally."
fi

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

# this part is really just here for the sudo
# and we assume that
#  . sudo on your system stays cached (default 5min)
#  .
echo -e $TEXT_YELLOW
sudo echo "Begin Ubuntu update script ..."
echo -e $TEXT_RESET


sudo apt-get -y update
echo -e $TEXT_YELLOW
echo 'APT update finished...'
echo -e $TEXT_RESET

sudo apt-get -y dist-upgrade
echo -e $TEXT_YELLOW
echo 'APT distributive upgrade finished...'
echo -e $TEXT_RESET

sudo apt-get -y upgrade
echo -e $TEXT_YELLOW
echo 'APT upgrade finished...'
echo -e $TEXT_RESET

sudo apt-get -y autoremove
echo -e $TEXT_YELLOW
echo 'APT auto remove finished...'
echo -e $TEXT_RESET

# run the check shown in the MOTD to show the new status.
echo -e $TEXT_RED_B
/usr/lib/update-notifier/apt_check.py --human-readable
echo -e $TEXT_RESET

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
fi

echo "Do you wish to reboot?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo reboot;;
        No ) exit;;
        * ) echo "pick a number 1, 2"
    esac
done
