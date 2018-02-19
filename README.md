# UbuntuUpdates.sh
A simple script to wrap the four steps I do every time I need to update my Ubuntu systems.


Updating

    sudo apt-get update &&    # Fetches the list of    available updates
    sudo apt-get upgrade &&    # Strictly upgrades the current packages
    sudo apt-get upgrade &&   # Strictly upgrades the current packages
    sudo apt-get dist-upgrade &&
    sudo apt-get autoremove
    # then reboot
