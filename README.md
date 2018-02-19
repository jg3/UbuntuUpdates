# UbuntuUpdates.sh
A simple script to wrap the four steps I do every time I need to update my Ubuntu systems.


These are the four steps I would do every time:

    sudo apt-get update &&    # Fetches the list of    available updates
    sudo apt-get upgrade &&    # Strictly upgrades the current packages
    sudo apt-get upgrade &&   # Strictly upgrades the current packages
    sudo apt-get dist-upgrade &&
    sudo apt-get autoremove
    # then reboot




----



## Install git

    sudo apt-get install git

## Pull this project

    get clone https://github.com/jg3/UbuntuUpdates.git

## Run the updates

    cd UbuntuUpdates
    chmod u+x UpuntuUpdates.sh
    ./UpuntuUpdates.sh
