#!/bin/sh

uninstall()
{
    # remove the udev rules 
    sudo rm /etc/udev/rules.d/99-mountcopy.rules
    # delete helper script
    sudo rm /usr/bin/mountcopy
    #reload udev configuration
    sudo udevadm control --reload-rules && sudo udevadm trigger
}

uninstall