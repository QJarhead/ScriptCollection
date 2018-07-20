#./pre_installations/servicebyname.sh darkandlight
#echo "run steamcmd darkandlight"
#steamcmd +login anonymous +force_install_dir /media/disk1/steamcmd +app_update 740 +quit
#steamcmd +login anonymous +force_install_dir /media/disk1/steamcmd +app_update 740 +quit


LINE="fs.file-max=10000"
FILE=/etc/fstab
if ! sudo grep -qF "$LINE" /etc/fstab
then
    sudo echo "fs.file-max=10000" >> /etc/sysctl.conf
else
    echo "Entry in fstab exists."
fi

LINE="* soft nofile 10000"
FILE=/etc/fstab
if ! sudo grep -qF "$LINE" /etc/fstab
then
    sudo echo "* soft nofile 10000" >> /etc/security/limits.conf
    sudo echo "* soft nofile 10000" >> /etc/security/limits.conf
else
    echo "Entry in fstab exists."
fi


username=$USER
wine cmd /c mkdir C:\\steamcmd
sudo mkdir /media/disk1/darkandlight
sudo ln -s /media/disk1/darkandlight ~/.wine/drive_c/darkandlight
#wine cmd /c mkdir C:\\steamcmd\\darkandlight
#wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -O ~/.wine/drive_c/steamcmd/steamcmd.zip
#unzip -o ~/.wine/drive_c/steamcmd/steamcmd.zip -d ~/.wine/drive_c/steamcmd/steamcmd.exe
sudo chown -R $username:$username /media/disk1/darkandlight
#steamcmd +login anonymous +force_install_dir /media/disk1/darkandlight +app_update 630230 validate +quit
#wine c:\\steamcmd\\steamcmd.exe +force_install_dir C:\\steamcmd\\darkandlight\\ +login anonymous +app_update 630230 validate +quit
#https://steamcommunity.com/linkfilter/?url=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
