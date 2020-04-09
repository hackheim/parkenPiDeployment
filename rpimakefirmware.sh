sudo apt-get update
sudo apt-get upgrade
wget https://github.com/raspberrypi/rpi-eeprom/raw/master/firmware/beta/pieeprom-2019-10-16.bin
rpi-eeprom-config pieeprom-2019-10-16.bin > bootconf.txt
sed -i s/0x1/0x21/g bootconf.txt
