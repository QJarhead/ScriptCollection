sudo wget http://mcmyadmin.com/Downloads/etc.zip -P /usr/local/
sudo unzip -o /usr/local/etc.zip -d /usr/local; sudo rm /usr/local/etc.zip
currentpath=$(pwd)
./pre_installations/create_user.sh minecraft minecraft
su -c ./pre_installations/mcmyadmin_user.sh - minecraft
#sudo cp pre_installations/mcmyadmin.service /etc/systemd/system/mcmyadmin.service
#chmod +x /etc/systemd/system/mcmyadmin.service
#sudo systemctl enable mcmyadmin; sudo systemctl start mcmyadmin
#sudo echo "eula=true" > /home/minecraft/McMyAdmin/Minecraft/eula.txt
