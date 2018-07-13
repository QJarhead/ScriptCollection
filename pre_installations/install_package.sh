pre_installations/is_package_installed.sh $1
if [ $? -eq 0 ]
then
    echo $1" is installed!"
    exit 0
else
    echo $1" will be installed"
    sudo apt install $1 -y
    exit 1
fi
