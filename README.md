# parkenPiDeployment
raspberry pi deployment scripts

## Flash the firmware on the raspberry pi to support network boot:

### 1) If you for some reason need to "bake" a new firmware image, do the following:

You can edit this script to download whatever firmware version needed, the one in the script is verified to work.

- make sure your software is updated: `sudo apt update && sudo apt upgrade`
- run the following script to create a new firmware image that supports PXE booting: `sh rpimakefirmware.sh`

### 2) When already have an SD-card set up with the already "baked" fimrware:

- run `sh firmwaredeploy.sh`
- write down the 8 characters the script tells you to take note of(important later)
  - it might be wise to write on a piece of electrical tape and put on the pi.
- shut down the pi `sudo shutdown now`

Congrats, the firmware on the pi should be ready for network boot, now proceed with the following steps below to be ready to deploy.

## Now, follow this routine to configure the server to provide the boot images for the pi:

- run `sh addpi.sh 11223344` where the number will be the one that was provided in the previous step.

  -  for example: `sh addpi.sh 2f934686`
  -  This will create the boot directories the pi needs to be able to boot up.
  
### CONGRATS! YOUR PI SHOULD BE READY TO BOOT UP!
  
  
