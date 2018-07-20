#!/bin/bash
/usr/games/steamcmd +login anonymous +force_install_dir /media/disk1/darkandlight +app_update 630230 validate +quit
ulimit -n 10000
xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' wine ~/.wine/drive_c/darkandlight/DNL/Binaries/Win64/DNLServer.exe  "/Game/DNL/Maps/CapeOfSacredPath/DNL_ALL?Port=7777?QueryPort=27015?SessionName=MYSERVERNAME?MaxPlayers=70?listen?AllowFlyerCarryPvE=true?RCONEnabled=True?RCONPort=32330?ServerAdminPassword=LifecamVx" -servergamelog -useallavailablecores -nosteamclient -game -server -log
