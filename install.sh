#!/bin/sh

install()
{
    #copy mount copy rules to proper directory
    sudo cp 99-mountcopy.rules /etc/udev/rules.d/
    #copy mountcopy script to user folder
    sudo cp mountcopy /usr/bin
    #ensure mountcopy script is still executable
    sudo chmod +x /usr/bin/mountcopy
    #load udev config
    sudo udevadm control --reload-rules && sudo udevadm trigger

}

install