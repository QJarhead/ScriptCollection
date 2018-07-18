sudo mkdir /media/disk1/service
sudo cp services/start.$1.sh /media/disk1/service/start.sh
sudo chmod +x /media/disk1/service/start.sh
sudo cp services/stop.$1.sh /media/disk1/service/stop.sh
sudo chmod +x /media/disk1/service/stop.sh
