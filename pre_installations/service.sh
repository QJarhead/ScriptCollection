#!/bin/bash
file="/etc/systemd/system/gameservice.service"
if [ ! -f "$file" ]
then
    echo "Installing Game-Service"
    sudo cp pre_installations/gameservice.service /etc/systemd/system/gameservice.service
    sudo chmod +x /etc/systemd/system/gameservice.service
    sudo systemctl enable gameservice; sudo systemctl start gameservice
    echo "Game-Service installed"
else
    echo "Game-Service already installed"
fi
