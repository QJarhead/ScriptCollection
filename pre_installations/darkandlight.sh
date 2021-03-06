./pre_installations/servicebyname.sh darkandlight
#echo "run steamcmd darkandlight"
#steamcmd +login anonymous +force_install_dir /media/disk1/steamcmd +app_update 740 +quit
#steamcmd +login anonymous +force_install_dir /media/disk1/steamcmd +app_update 740 +quit
source config.conf
username=$USER
wine cmd /c mkdir C:\\steamcmd
sudo mkdir /media/disk1/darkandlight
sudo mkdir /media/disk1/darkandlight/DNL
sudo mkdir /media/disk1/darkandlight/DNL/Binaries
sudo mkdir /media/disk1/darkandlight/DNL/Binaries/Win64
sudo ln -s /media/disk1/darkandlight ~/.wine/drive_c/darkandlight

LINE="* hard nofile 10000"
FILE=/etc/security/limits.conf
if ! grep -qF "$LINE" /etc/security/limits.conf
then
    echo "* hard nofile 10000" | sudo tee --append /etc/fstab
else
    echo "FileLimit already set"
fi

#sudo wget https://www.ryanschulze.net/files/rcon.c -O /media/disk1/service/rcon.c

#sudo gcc -o /media/disk1/service/rcon /media/disk1/service/rcon.c

sudo cp services/rcon /media/disk1/service/rcon

#wine cmd /c mkdir C:\\steamcmd\\darkandlight
#wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -O ~/.wine/drive_c/steamcmd/steamcmd.zip
#unzip -o ~/.wine/drive_c/steamcmd/steamcmd.zip -d ~/.wine/drive_c/steamcmd/steamcmd.exe
sudo chown -R $username:$username /media/disk1/darkandlight
#steamcmd +login anonymous +force_install_dir /media/disk1/darkandlight +app_update 630230 validate +quit
#wine c:\\steamcmd\\steamcmd.exe +force_install_dir C:\\steamcmd\\darkandlight\\ +login anonymous +app_update 630230 validate +quit
#https://steamcommunity.com/linkfilter/?url=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
source config.conf

sudo touch /media/disk1/service/config.conf
echo "servername="$servername | sudo tee /media/disk1/service/config.conf
echo "serverpassword="$serverpassword | sudo tee --append /media/disk1/service/config.conf

sudo unzip -o pre_installations/zipfiles.zip -d /media/disk1/darkandlight/DNL/Binaries/Win64/
sudo service gameservice start
