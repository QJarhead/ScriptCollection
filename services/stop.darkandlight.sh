#!/bin/bash
#sudo -u minecraft bash -c "/usr/bin/screen -p 0 -S mc-mcma -X eval 'stuff "/quit"\\015'"
source /media/disk1/service/config.conf
/media/disk1/service/./rcon -P$serverpassword -a$(hostname --ip-address) -p32330 SaveWorld
/media/disk1/service/./rcon -P$serverpassword -a$(hostname --ip-address) -p32330 Broadcast Hey, Server saved! Shutdown! Good Bye
/media/disk1/service/./rcon -P$serverpassword -a$(hostname --ip-address) -p32330 DoExit
