# parkenPiDeployment
raspberry pi deployment scripts

## on a fresh raspberry pi4 do the following to configure network boot:

- make sure your software is updated: `sudo apt update && sudo apt upgrade`
- run the following script to create a new firmware image that supports PXE booting: `sh rpimakefirmware.sh`

## If you already have an SD-card set up with the already "baked" fimrware image do the following:

- run `sh firmwaredeploy.sh`
- write down the 8 characters the script tells you to take note of(important later), might be wise to write on a piece of electrical tape and put on the pi.
- shut down the pi `sudo shutdown now`
