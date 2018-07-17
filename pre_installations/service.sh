#!/bin/bash
file="/media/disk1/service/stop.sh"
if [ ! -f "$file" ]
then
    echo "Installing Game-Service"
    sudo cp pre_installations/gameservice.service /etc/systemd/system/gameservice.service
    sudo chmod +x /etc/systemd/system/gameservice.service
    #sudo cp service/start.$1.sh /media/disk1/service/start.sh
    #sudo chmod +x /media/disk1/service/start.sh
    #sudo cp service/stop.$1.sh /etc/systemd/system/stop.sh
    #sudo chmod +x /media/disk1/service/stop.sh
    sudo systemctl enable gameservice; sudo systemctl start gameservice
    echo "Game-Service installed"
else
    echo "Game-Service already installed"
fi
