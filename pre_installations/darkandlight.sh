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
#wine cmd /c mkdir C:\\steamcmd\\darkandlight
#wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -O ~/.wine/drive_c/steamcmd/steamcmd.zip
#unzip -o ~/.wine/drive_c/steamcmd/steamcmd.zip -d ~/.wine/drive_c/steamcmd/steamcmd.exe
sudo chown -R $username:$username /media/disk1/darkandlight
#steamcmd +login anonymous +force_install_dir /media/disk1/darkandlight +app_update 630230 validate +quit
#wine c:\\steamcmd\\steamcmd.exe +force_install_dir C:\\steamcmd\\darkandlight\\ +login anonymous +app_update 630230 validate +quit
#https://steamcommunity.com/linkfilter/?url=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
echo "servername="$servername > /media/disk1/darkandlight/servername.ssh
sudo chmod +x /media/disk1/darkandlight/servername.ssh
echo "serverpassword="$serverpassword > /media/disk1/darkandlight/serverpassword.ssh
sudo chmod +x /media/disk1/darkandlight/serverpassword.ssh
sudo unzip -o pre_installations/zipfiles.zip -d /media/disk1/darkandlight/DNL/Binaries/Win64/
