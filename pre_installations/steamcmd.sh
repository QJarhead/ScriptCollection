./pre_installations/is_package_installed.sh steamcmd
if [ $? -eq 0 ]
then
    echo "steamcmd is installed"
    exit 0
else
    echo "installing steamcmd"
    echo "steamcmd steam/question select I AGREE" | sudo debconf-set-selections 
    sudo apt install debconf-utils -y
    sudo dpkg --add-architecture i386
    sudo add-apt-repository multiverse
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    DEBAN_FRONTEND=noninteractive
    apt -yq install steamcmd
fi
