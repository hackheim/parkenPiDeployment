sudo rpi-eeprom-update -d -f ./pieeprom-2019-10-16-netboot.bin

echo "\nyou will want to note down this:"
cat /proc/cpuinfo | grep Serial | grep -o '........$'
