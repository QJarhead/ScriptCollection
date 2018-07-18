#./pre_installations/servicebyname.sh darkandlight
#echo "run steamcmd darkandlight"
#steamcmd +login anonymous +force_install_dir /media/disk1/steamcmd +app_update 740 +quit
#steamcmd +login anonymous +force_install_dir /media/disk1/steamcmd +app_update 740 +quit
wine cmd /c mkdir C:\\steamcmd
mkdir /media/disk1/darkandlight
ln -s /media/disk1/darkandlight ~/.wine/drive_c/darkandlight
wine cmd /c mkdir C:\\steamcmd\\darkandlight
#wget https://steamcommunity.com/linkfilter/?url=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -O ~/.wine/drive_c/steamcmd/test.file
#wine c:\\steamcmd\\steamcmd.exe +force_install_dir C:\\steamcmd\\darkandlight +login anonymous +app_update 630230 validate +quit
#https://steamcommunity.com/linkfilter/?url=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
